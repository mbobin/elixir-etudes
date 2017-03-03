# http://chimera.labs.oreilly.com/books/1234000001642/ch02.html#CH02-ET04

defmodule Test do
  def sum( a \\ 3, b, c \\ 7) do
    a + b + c
  end
end

IO.puts Test.sum(11, 22, 33)
# => 66
IO.puts Test.sum(11, 22)
# =>  30
IO.puts Test.sum(11)
# => 21
