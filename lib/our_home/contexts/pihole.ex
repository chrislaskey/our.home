defmodule OurHome.Pihole do
  defmodule Summary do
    defstruct [
      :ads_blocked_today,
      :ads_percentage_today,
      :clients_ever_seen,
      :dns_queries_all_types,
      :dns_queries_today,
      :domains_being_blocked,
      :gravity_last_updated,
      :privacy_level,
      :queries_cached,
      :queries_forwarded,
      :reply_CNAME,
      :reply_IP,
      :reply_NODATA,
      :reply_NXDOMAIN,
      :status,
      :unique_clients,
      :unique_domains
    ]
  end

  @doc """
  Return summary
  """
  def summary() do
    case OurHome.Drivers.PiholeApi.action("summary") do
      {:ok, data} -> to_summary_struct(data)
      _ -> nil
    end
  end

  defp to_summary_struct(data) do
    struct = struct(Summary)

    Enum.reduce(Map.to_list(struct), struct, fn {key, _}, acc ->
      case Map.fetch(data, Atom.to_string(key)) do
        {:ok, value} -> %{acc | key => value}
        :error -> acc
      end
    end)
  end

  @doc """
  Disable for a given time in seconds
  """
  def disable(time_in_seconds) when is_bitstring(time_in_seconds) do
    time_in_seconds
    |> String.to_integer()
    |> disable()
  end

  def disable(time_in_seconds) do
    OurHome.Drivers.PiholeApi.action("disable", time_in_seconds)
  end

  @doc """
  Enable adblocker
  """
  def enable() do
    OurHome.Drivers.PiholeApi.action("enable")
  end
end
