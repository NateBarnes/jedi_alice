defmodule JediAlice.MixProject do
  use Mix.Project

  def project do
    [
      app: :jedi_alice,
      version: "0.1.1",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [coveralls: :test],
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
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:alice, "~> 0.4.3"},
      {:excoveralls, "~> 0.12.3", only: :test}
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
