defmodule GuessingGame do
  def compare(secret_number), do: "Make a guess"
  def compare(secret_number, guess) when guess == :no_guess, do: "Make a guess"
  def compare(secret_number, guess) do
    cond do
      secret_number == guess -> "Correct"
      secret_number + 1 == guess or secret_number - 1 == guess -> "So close"
      secret_number < guess -> "Too high"
      secret_number > guess -> "Too low"
      
    end
  end
end
