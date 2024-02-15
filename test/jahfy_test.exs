defmodule JahfyTest do
  use ExUnit.Case
  doctest Jahfy

  test "greets the world" do
    assert Jahfy.hello() == :world
  end
end
