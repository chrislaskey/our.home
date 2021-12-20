defmodule OurHome.Drivers.PiholeApi do
  use HTTPoison.Base

  @auth_token Application.get_env(:our_home, OurHome.Drivers.PiholeApi)[:auth_token]
  @base_api_path "/admin/api.php"

  # HTTPoison Functions

  def process_request_url(url) do
    "http://pi.hole" <> url
  end

  def process_request_headers(headers) do
    headers ++ ["X-Pi-hole-Authenticate": @auth_token]
  end

  def process_response_body(body) do
    Jason.decode!(body)
  rescue
    _e -> {:error, body}
  end

  # Helper Functions

  @doc """
  Send an API request with an authentication header
  """
  def action(key, value \\ true) do
    query = "#{@base_api_path}?#{key}=#{value}&auth=#{@auth_token}"

    case OurHome.Drivers.PiholeApi.get(query) do
      {:ok, %{status_code: 200, body: body}} -> {:ok, body}
      {_, %{body: body}} -> {:error, body}
    end
  end
end
