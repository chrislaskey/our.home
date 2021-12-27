defmodule OurHome.Drivers.PiholeApi do
  use HTTPoison.Base

  @base_api_path "/admin/api.php"

  # HTTPoison Functions

  def process_request_url(url) do
    "http://#{get_config(:domain)}#{url}"
  end

  def process_request_headers(headers) do
    headers ++ ["X-Pi-hole-Authenticate": get_config(:auth_token)]
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
    query = "#{@base_api_path}?#{key}=#{value}&auth=#{get_config(:auth_token)}"

    case OurHome.Drivers.PiholeApi.get(query) do
      {:ok, %{status_code: 200, body: body}} -> {:ok, body}
      {_, %{body: body}} -> {:error, body}
    end
  end

  @doc """
  Get application config value
  """
  def get_config(key) do
    :our_home
    |> Application.get_env(OurHome.Drivers.PiholeApi)
    |> Keyword.get(key)
  end
end
