defmodule RobotsServer.MixProject do
  use Mix.Project

  def project do
    [
      app: :robots_server,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {RobotsServer.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:bandit, ">= 0.7.4"},
      {:plug_cowboy, "~> 2.0"},
      {:websock_adapter, "~> 0.5.0"}
    ]
  end
end
