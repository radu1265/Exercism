defmodule ResistorColorDuo do
  @doc """
  Calculate a resistance value from two colors
  """
  @spec value(colors :: [atom]) :: integer
  def value(colors) do
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
    [f_color, s_color | _tail] = colors
    Map.get(map_of_colors, f_color) * 10 + Map.get(map_of_colors, s_color)
  end
end
