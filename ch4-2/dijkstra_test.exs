Code.require_file "dijkstra.ex", __DIR__
System.cmd("elixirc", ["dijkstra.ex"])
ExUnit.start

defmodule Dijkstra.Test do
  use ExUnit.Case, async: true
  doctest Dijkstra

  test "gcd(2, 8) = 2" do
    assert Dijkstra.gcd(2, 8) == 2
  end

  test "gcd(14, 21) = 7" do
    assert Dijkstra.gcd(14, 21) == 7
  end

  test "gcd(125, 46) = 1" do
    assert Dijkstra.gcd(125, 46) == 1
  end

  test "gcd(120, 36) = 12" do
    assert Dijkstra.gcd(120, 36) == 12
  end
end

System.cmd("rm", ["Elixir.Dijkstra.beam"])
