# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :slack_clone,
  ecto_repos: [SlackClone.Repo]

# Configures the endpoint
config :slack_clone, SlackClone.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ZBsdiYqCCZHv91Nbm5A/B6zQZFLDurM0xtONTSL38LzmHOb4VKDF3Pyohgl+u6Ry",
  render_errors: [view: SlackClone.ErrorView, accepts: ~w(json)],
  pubsub: [name: SlackClone.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :guardian, Guardian,
  secret_key: "dhP0MYPOksXpbb3RqXI428LHO+QsIg1363mUHEGG7odNMhXWqG50J4j2mF/2tkxB",
  issuer: "SlackClone",
  ttl: {30, :days},
  verify_issuer: true,
  serializer: SlackClone.GuardianSerializer

import_config "#{Mix.env}.exs"
