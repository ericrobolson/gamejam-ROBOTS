defmodule RobotsServerTest do
  use ExUnit.Case
  doctest RobotsServer

  test "greets the world" do
    assert RobotsServer.hello() == :world
  end
end
