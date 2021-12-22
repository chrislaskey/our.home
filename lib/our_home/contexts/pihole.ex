defmodule OurHome.Pihole do
  @doc """
  Return summary
  """
  def summary() do
    OurHome.Drivers.PiholeApi.action("summary")
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
