defmodule RobotsServer.Socket do
  require Logger

  def init(args) do
    {:ok, []}
  end

  def handle_in({"ping", [opcode: :text]}, state) do
    {:reply, :ok, {:text, "pong"}, state}
  end

  def handle_in(garbage, state) do
    Logger.error("#{inspect(garbage)}", [:unhandled])

    {:reply, :error,
     {:text,
      "Unfortunately this is not a handled scenario. Please contact the developer or open a Github issue."},
     state}
  end

  def terminate(:timeout, state) do
    {:ok, state}
  end

  def terminate(reason, state) do
    {:ok, state}
  end
end
