defmodule ElixirTest.Application do
  use Application

  def start(_type, _args) do
    children = [
      ElixirTest.Scheduler,
      ElixirTest.Server
    ]

    opts = [
      strategy: :one_for_one,
      name: ElixirTest.Supervisor
    ]

    Supervisor.start_link(children, opts)
  end
end
