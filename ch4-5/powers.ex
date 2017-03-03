# http://chimera.labs.oreilly.com/books/1234000001642/ch04.html#CH04-ET05

defmodule Powers do
  import Kernel, except: [raise: 2, raise: 3]

  def raise(_, 0), do: 1

  def raise(x, 1), do: x

  def raise(x, n) when n > 0 do
    raise(x, n, 1)
  end

  def raise(x, n) when n < 0 do
    1.0 / raise(x, -n)
  end

  defp raise(_x, n, acc) when n == 0 do
    acc
  end

  defp raise(x, n, acc) do
    raise(x, n-1, acc * x)
  end


  def nth_root(x, n) do
    nth_root(x, n, x / 2.0)
  end

  def nth_root(x, n, approx) do
    f = raise(approx, n) - x
    f_prime = n * raise(approx, n - 1)
    next_approx = approx - f / f_prime
    value_change = abs(next_approx - approx)

    cond do
      value_change < 1.0e-8 -> next_approx
      true                  -> nth_root(x, n, next_approx)
    end
  end
end
