defmodule AskArea do

  def get_shape() do
    IO.gets("R)ectangle, T)riangle, or E)llipse: ") |> char_to_shape()
  end

  def char_to_shape(char) do
    char =
      char
      |> String.first()
      |> String.upcase()

    case char do
      "R" -> :rectangle
      "T" -> :triangle
      "E" -> :ellipse
      _   -> :unknown
    end
  end

  def get_number(prompt) do
    IO.gets("Enter #{prompt} > ")
    |> String.strip()
    |> String.to_integer()
  end

  def get_dimensions(dim1, dim2) do
    {get_number(dim1), get_number(dim2)}
  end

  def calculate(:unknown, _, _) do
    IO.puts "Unknown shape"
    :error
  end

  def calculate(_shape, dim1, dim2) when dim1 < 0 or dim2 < 0 do
    IO.puts "Both numbers must be greater than or equal to zero."
    :error
  end

  def calculate(shape, dim1, dim2) do
    Geom.area(shape, dim1, dim2)
  end

  def area() do
    shape = get_shape()
    {dim1, dim2} = case shape do
      :rectangle -> get_dimensions("width", "height")
      :triangle  -> get_dimensions("base ", "height" )
      :ellipse   -> get_dimensions("major radius", "minor radius")
      :unknown   -> {0, 0}
    end

    calculate(shape, dim1, dim2)
  end
end
