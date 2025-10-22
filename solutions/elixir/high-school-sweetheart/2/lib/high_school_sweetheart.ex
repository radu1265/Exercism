defmodule HighSchoolSweetheart do
  def first_letter(name) do
    String.replace(name, ["\n", "\t", " "],"")
    |>String.first()
  end

  def initial(name) do
    first_letter(name)
    |>String.upcase()
    |>then(&(&1 <> "."))

  end

  def initials(full_name) do
    [first, last] = String.split(full_name, " ")
    initial(first) <> " " <> initial(last)
  end

  def pair(full_name1, full_name2) do
  """
  ❤-------------------❤
  |  #{initials(full_name1)}  +  #{initials(full_name2)}  |
  ❤-------------------❤
  """
  end
end
