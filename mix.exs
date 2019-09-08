defmodule Pathfinder.MixProject do
  use Mix.Project

  def project do
    [
      app: :pathfinder,
      version: "0.1.2",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      source_url: "https://github.com/joargp/pathfinder_ex"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Pathfinder.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:nodejs, "~> 1.0"},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp description() do
    "jsonpath in elixir through nodejs"
  end

  defp package() do
    [
      links: %{"GitHub" => "https://github.com/joargp/pathfinder_ex"},
      files: ~w(lib node/jsonpath.js node/package.json .formatter.exs mix.exs README* LICENSE*),
      licenses: ["MIT"]
    ]
  end
end
