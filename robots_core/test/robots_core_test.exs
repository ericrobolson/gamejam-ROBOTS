defmodule RobotsCoreTest do
  use ExUnit.Case
  doctest RobotsCore

  test "greets the world" do
    assert RobotsCore.hello() == :world
  end
end
