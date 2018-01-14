# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elixir_peru,
  ecto_repos: [ElixirPeru.Repo]

# Configures the endpoint
config :elixir_peru, ElixirPeruWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hbo9aH6H+jZGbp6YB4WVqPPA30pVWePIXhLUuGc0YURBAf+o5sSaNCc+MgLCCxPk",
  render_errors: [view: ElixirPeruWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElixirPeru.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
