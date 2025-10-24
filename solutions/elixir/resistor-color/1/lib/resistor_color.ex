defmodule ResistorColor do
  @doc """
  Return the value of a color band
  """
  @spec code(atom) :: integer()
  def code(color) do
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
  Map.get(map_of_colors, color)
  end
end
