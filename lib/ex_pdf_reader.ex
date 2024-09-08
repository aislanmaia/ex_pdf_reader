defmodule ExPdfReader do
  @moduledoc """
  Documentation for `ExPdfReader`.
  """
  require Logger

  @doc """
  Extracts text from a PDF file using Poppler's pdftotext tool.
  """
  def extract_text(file_path, options \\ nil) do
    if poppler_installed?() do
      cmd_args = [file_path, "-", "-raw"] ++ (options || [])
      Logger.debug("Executing command: pdftotext #{inspect(cmd_args)}")
      {output, exit_code} = System.cmd("pdftotext", cmd_args)

      if exit_code == 0 do
        {:ok, output}
      else
        {:error, "Failed to extract text from PDF file"}
      end
    else
      {:error, "Poppler is not installed or accessible"}
    end
  end

  defp poppler_installed?() do
    case System.cmd("pdftotext", ["-v"]) do
      {_, 0} -> true
      _ -> false
    end
  end
end
