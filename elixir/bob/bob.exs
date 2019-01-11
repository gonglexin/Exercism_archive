defmodule Bob do
  def hey(input) do
    cond do
      String.trim(input) == "" ->
        "Fine. Be that way!"

      input =~ ~r/\p{Lu}/ && String.upcase(input) == input ->
        if input =~ ~r/\?$/, do: "Calm down, I know what I'm doing!", else: "Whoa, chill out!"

      String.ends_with?(input, "?") ->
        "Sure."

      true ->
        "Whatever."
    end
  end
end
