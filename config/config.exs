# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :tetris,
  ecto_repos: [Tetris.Repo]

# Configures the endpoint
config :tetris, TetrisWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "NwshfQOk1mH+yZKOo23QwohT0IldqvWqYzx2m2ipAhV0qoIdcFGepRBVj9Q7A15o",
  render_errors: [view: TetrisWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Tetris.PubSub,
  live_view: [signing_salt: "obe75Xin"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
