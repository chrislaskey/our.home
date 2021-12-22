defmodule OurHomeWeb.AdblockerController do
  use OurHomeWeb, :controller

  def create(conn, %{"adblocker" => params}) do
    case create_action(params) do
      {:ok, _} ->
        conn
        |> put_flash(:info, "Submitted adblocker action")
        |> redirect(to: Routes.home_path(conn, :index))

      {:error, message} ->
        conn
        |> put_flash(:error, message)
        |> redirect(to: Routes.home_path(conn, :index))
    end
  end

  defp create_action(%{"action" => "enable"}), do: OurHome.Pihole.enable()
  defp create_action(%{"action" => "disable", "time" => time}), do: OurHome.Pihole.disable(time)
  defp create_action(_params), do: {:error, "Invalid adblocker action"}
end
