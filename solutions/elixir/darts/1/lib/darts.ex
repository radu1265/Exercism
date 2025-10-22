defmodule Darts do
  @type position :: {number, number}

  @doc """
  Calculate the score of a single dart hitting a target
  """
  @spec score(position) :: integer
  def score({x, y}) do
    cond do
      x ** 2 + y ** 2 > 10 ** 2 -> 0
      x ** 2 + y ** 2 > 5 ** 2 -> 1
      x ** 2 + y ** 2 > 1 ** 2 -> 5
      x ** 2 + y ** 2 >= 0 -> 10
    end
  end
end
