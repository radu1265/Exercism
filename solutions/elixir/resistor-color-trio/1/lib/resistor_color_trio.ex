defmodule ResistorColorTrio do
  @doc """
  Calculate the resistance value in ohms from resistor colors
  """
  @spec label(colors :: [atom]) :: {number, :ohms | :kiloohms | :megaohms | :gigaohms}
  def label(colors) do
    map_of_colors = %{:black => 0, 
                      :brown => 1,
                      :red => 2,
                      :orange => 3,
                      :yellow => 4,
                      :green => 5,
                      :blue => 6,
                      :violet => 7,
                      :grey => 8,
                      :white => 9}

    [f_color, s_color, t_color | _tail] = colors
    [power, unit] =
    cond do
      s_color == :black -> get_power(Map.get(map_of_colors, t_color) + 1)
      true -> get_power(Map.get(map_of_colors, t_color))
    end
    cond do
      s_color == :black -> {Map.get(map_of_colors, f_color) * (10 ** power), unit}
      true -> {(Map.get(map_of_colors, f_color) * 10 + Map.get(map_of_colors, s_color)) * (10 ** power), unit}
    end
  end
  defp get_power(number) do
    map_of_powers = %{0 => :ohms,
                      1 => :kiloohms,
                      2 => :megaohms,
                      3 => :gigaohms}
    power = rem(number, 3)
    unit = Map.get(map_of_powers, div(number, 3))
    [power, unit]
  end
end
