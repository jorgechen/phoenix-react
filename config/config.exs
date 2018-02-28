# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :sfcombo,
  namespace: SFCombo,
  ecto_repos: [SFCombo.Repo]

# Configures the endpoint
config :sfcombo, SFComboWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "QD2USQgJ4h3BG7GgpX9kxxpDap3Yc8IkMsIgDG+umhZ3BB8niYAEqOrgVnhHuVOd",
  render_errors: [view: SFComboWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SFCombo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
