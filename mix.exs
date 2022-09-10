defmodule ElixirTest.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_test,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :runtime_tools, :os_mon, :observer, :wx],
      mod: { ElixirTest.Application, [] }
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:quantum, "~> 3.5"}
    ]
  end
end
