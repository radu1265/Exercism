defmodule EliudsEggs do
  @doc """
  Given the number, count the number of eggs.
  """
  @spec egg_count(number :: integer()) :: non_neg_integer()
  def egg_count(number) do
    dec_to_bin(number)
  end

  defp dec_to_bin(number \\ 0, acc \\ 0)
  defp dec_to_bin(0, acc), do: acc
  defp dec_to_bin(number, acc) do
    cond do
      rem(number, 2) == 0 -> dec_to_bin(div(number, 2), acc)
      true -> dec_to_bin(div(number, 2), acc + 1)
    end
  end
end
