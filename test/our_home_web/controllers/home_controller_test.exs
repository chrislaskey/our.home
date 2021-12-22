defmodule OurHomeWeb.HomeControllerTest do
  use OurHomeWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Our Home"
  end
end
