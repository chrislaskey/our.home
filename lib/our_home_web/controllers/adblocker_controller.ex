defmodule OurHomeWeb.AdblockerController do
  use OurHomeWeb, :controller

  @time_to_wait_on_success :timer.seconds(0)

  def create(conn, %{"adblocker" => params}) do
    case create_action(params) do
      {:ok, _message} ->
        :timer.sleep(@time_to_wait_on_success)

        conn
        |> put_flash(
          :info,
          "Submitted adblocker \"#{params["action"]}\" action. It may take up to 15 seconds for changes to take effect."
        )
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
