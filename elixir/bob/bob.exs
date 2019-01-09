defmodule Bob do
  def hey(input) do
    cond do
      String.trim(input) == "" -> "Fine. Be that way!"
      String.ends_with?(input, "?") -> "Sure."
      String.match?(input, ~r/\pL/) && (String.upcase(input) == input) -> "Whoa, chill out!"
      String.ends_with?(input, "!") -> "Whatever."
      true -> "Whatever."
    end
  end
end
