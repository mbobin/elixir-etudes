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
end
