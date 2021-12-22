defmodule OurHomeWeb.AdblockerControllerTest do
  use OurHomeWeb.ConnCase

  describe "create adblocker action" do
    test "redirects to home index when data is invalid", %{conn: conn} do
      action = "invalid-action"

      conn = post(conn, Routes.adblocker_path(conn, :create), action: action)

      assert get_flash(conn, :error) =~ "Invalid adblocker action"
      assert redirected_to(conn) == Routes.home_path(conn, :index)

      conn = get(conn, Routes.home_path(conn, :index))
      assert html_response(conn, 200) =~ "our home"
    end
  end
end
