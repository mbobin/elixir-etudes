defmodule Geom do
  @moduledoc ~S"""
  Functions for calculating areas of geometric shapes.
  """

  @doc ~S"""
  Calculate the are of a rectangle.
  Default values for both args is 1

  ## Examples

      iex> Geom.area(:rectangle, 5, 6)
      30

  """
  @spec area(atom(), number(), number()) :: number()
  def area(shape, arg1, arg2) when arg1 >= 0 and arg2 >= 0 do
    case shape do
      :rectangle    -> arg1 * arg2
      :triangle     -> arg1 * arg2 / 2
      :ellipse      -> :math.pi() * arg1 * arg2
      _gobbledygook -> 0
    end
  end
end
