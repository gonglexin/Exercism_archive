defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    sentence
    |> String.replace(~r/[!|@|#|$|%|^|&|:]/, " ")
    |> String.splitter([",", " ", "_"], trim: true)
    |> Enum.map(&String.downcase/1)
    |> Enum.reduce(%{}, fn word, acc ->
      Map.update(acc, word, 1, &(&1 + 1))
    end)
  end
end
