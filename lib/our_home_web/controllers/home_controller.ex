defmodule OurHomeWeb.HomeController do
  use OurHomeWeb, :controller

  def index(conn, _params) do
    assigns = [
      adblocker: OurHome.Pihole.summary()
    ]

    render(conn, "index.html", assigns)
  end
end
