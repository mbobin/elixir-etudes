defmodule Geom do
  @moduledoc ~S"""
  Functions for calculating areas of geometric shapes.
  """

  @doc ~S"""
  Calculate the are of a rectangle.
  Default values for both args is 1

  ## Examples

      iex> Geom.area(5, 6)
      30

  """
  @spec area(number(), number()) :: number()
  def area(length \\ 1, width \\ 1) do
    length * width
  end
end
