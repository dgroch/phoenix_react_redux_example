# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :phoenix_react_redux_example, PhoenixReactReduxExample.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ap1dNEu3Y9pjIiBj1sRSX20e8FUYBf3ORsrq8HjpPFJjXnPsKieftHGhr7FK/PLW",
  render_errors: [view: PhoenixReactReduxExample.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixReactReduxExample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
