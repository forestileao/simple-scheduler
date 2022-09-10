use Mix.Config

config :elixir_test, ElixirTest.Scheduler, jobs: [
  { "* * * * *", fn -> GenServer.cast(:random_server, :write) end }
]
