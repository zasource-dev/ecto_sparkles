defmodule EctoSparkles.MixProject do
  use Mix.Project

  def project do
    [
      app: :ecto_sparkles,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "Helper library to better join + preload ecto associations",
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application, do: [ extra_applications: [:logger] ]

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto_sql, "~> 3.7.2"},
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:recase, "~> 0.7"},
      {:where, "~> 0.1"},
      {:ecto_shorts, git: "https://github.com/bonfire-networks/ecto_shorts", branch: "refactor/attempt1"}
    ]
  end

end
