use Mix.Config

config :contento, ContentoWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :contento, Contento.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "contento_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
