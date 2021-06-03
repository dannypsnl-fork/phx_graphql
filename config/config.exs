# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phx_graphql,
  ecto_repos: [PhxGraphql.Repo]

# Configures the endpoint
config :phx_graphql, PhxGraphqlWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "XW4iKwjPwo+ZN4vWUDEVaEtVsJqO6Pb80ePUk0ALWYFyO40iNEIFHqpO4CWsG3X2",
  render_errors: [view: PhxGraphqlWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: PhxGraphql.PubSub,
  live_view: [signing_salt: "XqX92ySE"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
