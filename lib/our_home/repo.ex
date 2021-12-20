defmodule OurHome.Repo do
  use Ecto.Repo,
    otp_app: :our_home,
    adapter: Ecto.Adapters.SQLite3
end
