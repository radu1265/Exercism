defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    elem(volume_pair, 1)
  end

  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :cup do
    {:milliliter, 240 * get_volume(volume_pair)}
  end
  
  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :fluid_ounce do

    {:milliliter, 30 * get_volume(volume_pair)}
  end
  
  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :teaspoon do

    {:milliliter, 5 * get_volume(volume_pair)}
  end
  
  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :tablespoon do

    {:milliliter, 15 * get_volume(volume_pair)}
  end
  
  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :milliliter do
    {:milliliter, 1 * get_volume(volume_pair)}
  end


  # from milliliter
  def from_milliliter(volume_pair, :cup = unit) do
    {:milliliter, milliliters} = to_milliliter(volume_pair)
    {unit, milliliters / 240}
  end
  
  def from_milliliter(volume_pair, :fluid_ounce = unit) do
    {:milliliter, milliliters} = to_milliliter(volume_pair)
    {unit, milliliters / 30}


  end
  
  def from_milliliter(volume_pair, :teaspoon = unit) do
    {:milliliter, milliliters} = to_milliliter(volume_pair)
    {unit, milliliters / 5}

  end
  
  def from_milliliter(volume_pair, :tablespoon = unit) do
    {:milliliter, milliliters} = to_milliliter(volume_pair)
    {unit, milliliters / 15}
  
  end
  
  def from_milliliter(volume_pair, :milliliter = unit) do
    volume_pair
  end

  def convert(volume_pair, unit) do
    volume_pair_milliliters = to_milliliter(volume_pair)
    from_milliliter(volume_pair_milliliters, unit)
  end
end
