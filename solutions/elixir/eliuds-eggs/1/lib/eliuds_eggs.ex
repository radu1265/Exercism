defmodule EliudsEggs do
  @doc """
  Given the number, count the number of eggs.
  """
  @spec egg_count(number :: integer()) :: non_neg_integer()
  def egg_count(number) do
    dec_to_bin(number)
  end

  def dec_to_bin(0, acc), do: acc
  def dec_to_bin(number, acc \\ 0) do
    cond do
      rem(number, 2) == 0 -> dec_to_bin(div(number, 2), acc)
      true -> dec_to_bin(div(number, 2), acc + 1)
    end
  end
end
