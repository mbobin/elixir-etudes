# Code.require_file "geom.ex", __DIR__
System.cmd("elixirc", ["geom.ex"])
ExUnit.start

defmodule Geom.Test do
  use ExUnit.Case, async: true
  doctest Geom

  test "rectangle, 3 * 4 = 12" do
    assert Geom.area({:rectangle, 3, 4}) == 12
  end

  test "rectangle, 12 * 7 = 84" do
    assert Geom.area({:rectangle, 12, 7}) == 84
  end

  test "rectangle with 3 params raises error" do
    assert_raise UndefinedFunctionError, fn ->
      Geom.area(:rectangle, 7, 3)
    end
  end

  test "triangle, 3, 5 = 7.5" do
    assert Geom.area({:triangle, 3, 5}) == 7.5
  end

  test "ellipse, 2, 4 = 25.13274" do
    assert_in_delta Geom.area({:ellipse, 2, 4}), 25.13274, 0.0001
  end

  test "rectangle with negative length raises error" do
    assert Geom.area({:rectangle, -3, 4}) == 0
  end

  test "rectangle with negative width raises error" do
    assert Geom.area({:rectangle, 3, -4}) == 0
  end

  test "triangle with negative length raises error" do
    assert Geom.area({:triangle, -3, 4}) == 0
  end

  test "triangle with negative width raises error" do
    assert Geom.area({:triangle, 3, -4}) == 0
  end

  test "ellipse with negative length raises error" do
    assert Geom.area({:ellipse, -3, 4}) == 0
  end

  test "ellipse with negative width raises error" do
    assert Geom.area({:ellipse, 3, -4}) == 0
  end

  test "other shapes return 0" do
    assert Geom.area({:pentagon, 3, 4}) == 0
  end
end

System.cmd("rm", ["Elixir.Geom.beam"])
