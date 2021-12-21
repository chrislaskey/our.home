defmodule OurHome.Release do
  @moduledoc """
  Manage release tasks like database management in production release
  environments where `mix` tasks may not be available.

  Inspired by official docs and Elixir forum discussion:
  https://elixirforum.com/t/how-to-create-database-on-release/28443/2
  """
  @start_apps [:postgrex, :ecto, :ecto_sql]
  @app :our_home

  def create_and_migrate_and_seed_data_stores() do
    create_databases()
    migrate()
    seed()
  end

  def create_databases() do
    Enum.each(@start_apps, &Application.ensure_all_started/1)
    Enum.each([@app], &create_database_for/1)
  end

  defp create_database_for(app) do
    for repo <- repos(app) do
      :ok = ensure_repo_created(repo)
    end
  end

  defp ensure_repo_created(repo) do
    case repo.__adapter__.storage_up(repo.config) do
      :ok -> :ok
      {:error, :already_up} -> :ok
      {:error, term} -> {:error, term}
    end
  end

  def migrate() do
    load_app(@app)

    for repo <- repos(@app) do
      {:ok, _, _} = Ecto.Migrator.with_repo(repo, &Ecto.Migrator.run(&1, :up, all: true))
    end
  end

  def rollback(repo, version) do
    load_app(@app)
    {:ok, _, _} = Ecto.Migrator.with_repo(repo, &Ecto.Migrator.run(&1, :down, to: version))
  end

  defp repos(app) do
    Application.fetch_env!(app, :ecto_repos)
  end

  defp load_app(app) do
    Application.load(app)
  end

  def seed() do
    OurHome.Seeds.call()
  end
end
