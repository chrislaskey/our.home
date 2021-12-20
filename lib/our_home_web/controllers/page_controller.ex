defmodule OurHomeWeb.PageController do
  use OurHomeWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
