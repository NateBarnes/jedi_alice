defmodule JediAlice.MixProject do
  use Mix.Project

  def project do
    [
      app: :jedi_alice,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: "An addon for Alice to display Star Wars themed responses"
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
      {:alice, "~> 0.4.3"}
    ]
  end

  defp package() do
    [
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/NateBarnes/jedi_alice",
        "Docs" => "https://hexdocs.pm/jedi_alice/0.1.0"
      }
    ]
  end
end
