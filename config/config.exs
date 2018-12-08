# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :translator_topic,
  ecto_repos: [TranslatorTopic.Repo]

# Configures the endpoint
config :translator_topic, TranslatorTopic.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "RclsWEYMpZQbFSm08Xm9S7BrX8fe3asirSExRLgOgN4WSAHUf+TJRVducSYM/sHG",
  render_errors: [view: TranslatorTopic.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TranslatorTopic.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
