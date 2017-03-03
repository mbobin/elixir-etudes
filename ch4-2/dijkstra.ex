defmodule Dijkstra do

  def gcd(num1, num2) do
    cond do
      num1 == num2 -> num1
      num1 > num2  -> gcd(num1 - num2, num2)
      true         -> gcd(num1, num2 - num1)
    end
  end
end
