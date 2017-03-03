# Code.require_file "geom.ex", __DIR__
System.cmd("elixirc", ["geom.ex"])
ExUnit.start

defmodule Geom.Test do
  use ExUnit.Case, async: true
  doctest Geom

  test "3 * 4 = 12" do
    assert Geom.area(3, 4) == 12
  end

  test "12 * 7 = 84" do
    assert Geom.area(12, 7) == 84
  end

  test "default values" do
    assert Geom.area() == 1
  end

  test "12  = 12" do
    assert Geom.area(12) == 12
  end

  test "3 * 3 != 12" do
    refute Geom.area(3, 3) == 12
  end
end

System.cmd("rm", ["Elixir.Geom.beam"])
