Code.require_file "powers.ex", __DIR__
System.cmd("elixirc", ["powers.ex"])
ExUnit.start

defmodule Powers.Test do
  use ExUnit.Case, async: true
  doctest Powers

  test "raise(5, 1) = 5" do
    assert Powers.raise(5, 1) == 5
  end

  test "raise(2, 3) = 8" do
    assert Powers.raise(2, 3) == 8
  end

  test "raise(1.2, 3) = 1.728" do
    assert Powers.raise(1.2, 3) == 1.728
  end

  test "raise(2, 0) = 1" do
    assert Powers.raise(2, 0) == 1
  end

  test "raise(2, -3) = 0.125" do
    assert Powers.raise(2, -3) == 0.125
  end
end

System.cmd("rm", ["Elixir.Powers.beam"])
