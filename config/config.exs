# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :api_addressbook,
  ecto_repos: [ApiAddressbook.Repo]

# Configures the endpoint
config :api_addressbook, ApiAddressbook.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "lsIg7aUDSMpSFvmp9uQvIpp0PvIN0oxjVFXndluA0i9QEyqrhiG6Hs/XlU0kBdgO",
  render_errors: [view: ApiAddressbook.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ApiAddressbook.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
