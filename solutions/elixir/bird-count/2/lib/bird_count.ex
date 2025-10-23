defmodule BirdCount do
  def today(list) do
    List.first(list)
  end

  def increment_day_count(list) do
    cond do
      today(list) == nil -> [1]
      true -> [head | tail] = list
              head = head + 1
              [head | tail]
    end
  end

  def has_day_without_birds?(list \\ []) when list == [] or list == nil, do: false
  def has_day_without_birds?(list) do
    [head | tail] = list
    cond do
      head == 0 -> true
      true -> has_day_without_birds?(tail)
    end
  end

  def total(list, acc \\ 0) when list == [], do: acc
  def total(list, acc) do
    [head | tail] = list
    total(tail, acc + head)
  end

  def busy_days(list, acc \\ 0) when list == [] or list == nil, do: acc
  def busy_days(list, acc) do
    [head | tail] = list
    cond do
      head >= 5 -> busy_days(tail, acc + 1)
      true -> busy_days(tail, acc)
    end
  end
end
