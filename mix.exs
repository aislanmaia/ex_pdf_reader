defmodule ExPdfReader.MixProject do
  use Mix.Project

  def project do
    [
      app: :poppler_pdf_wrapper,
      version: "0.1.0",
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "A wrapper library for reading PDFs using poppler rendering library",
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:ex_doc, "~> 0.31", only: :dev, runtime: false}
    ]
  end

  defp package() do
    [
      name: :ex_pdf_reader,
      maintainers: ["Aislan Maia"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/aislanmaia/ex_pdf_reader"},
      files: ~w(lib mix.exs README.md LICENSE)
    ]
  end
end
