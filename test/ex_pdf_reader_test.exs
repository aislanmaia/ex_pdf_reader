defmodule ExPdfReaderTest do
  use ExUnit.Case
  doctest ExPdfReader

  test "print pdf data" do
    case ExPdfReader.extract_text("input.pdf") do
      {:ok, text} ->
        IO.puts("Extracted text: \n#{text}")

      {:error, reason} ->
        IO.puts("Error: #{reason}")
    end
  end
end
