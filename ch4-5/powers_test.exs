Code.require_file "powers.ex", __DIR__
System.cmd("elixirc", ["powers.ex"])
ExUnit.start

defmodule Powers.Test do
  use ExUnit.Case, async: true
  doctest Powers

  test "nth_root(27, 3)" do
    assert_in_delta Powers.nth_root(27, 3), 3.0, 0.000001
  end
end

System.cmd("rm", ["Elixir.Powers.beam"])
