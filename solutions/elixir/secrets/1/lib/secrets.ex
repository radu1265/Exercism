defmodule Secrets do
  def secret_add(secret) do
    fn to_add ->
      to_add + secret
    end
  end

  def secret_subtract(secret) do
    &(&1 - secret)
  end

  def secret_multiply(secret) do
    &(&1 * secret)
  end

  def secret_divide(secret) do
    &(trunc(&1 / secret))
  end

  def secret_and(secret) do
    fn param -> 
      Bitwise.band(param, secret)
    end
  end

  def secret_xor(secret) do
    &Bitwise.bxor(&1, secret)
  end

  def secret_combine(secret_function1, secret_function2) do
    fn param ->
      secret_function2.(secret_function1.(param))
    end
  end
end
