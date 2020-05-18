defmodule JediAlice.MixProject do
  use Mix.Project

  def project do
    [
      app: :jedi_alice,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: []
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:alice, "~> 0.4.2", github: "alice-bot/alice"}
    ]
  end
end
