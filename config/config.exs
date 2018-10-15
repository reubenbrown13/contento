use Mix.Config

# General application configuration
config :contento,
  ecto_repos: [Contento.Repo]

# Configures the endpoint
config :contento, ContentoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "gTNXi5+nCa3VGhfTIojUDCMljVQVQFaIk/bDGcTqSSiNgx3sYqwZ8cyT4iwY5T6j",
  render_errors: [view: ContentoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Contento.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config
import_config "#{Mix.env}.exs"
