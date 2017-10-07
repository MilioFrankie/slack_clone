use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or you later on).
config :slack_clone, SlackClone.Endpoint,
  secret_key_base: "AqL8IityE1799QHWzfnuGtbO3h0iumgVh12MzC9/Ry0LUSF7oyO5uJCzwab0hwfd"

# Configure your database
config :slack_clone, SlackClone.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "slack_clone_prod",
  pool_size: 20
