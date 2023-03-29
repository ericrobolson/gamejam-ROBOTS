defmodule RobotsServer.Router do
  use Plug.Router

  require Logger

  @html """
  <!DOCTYPE html>
  <html>
  <head>
    <meta charset="utf-8">
    <title>Robots Server</title>
  </head>
  <body>
    <h1>Robots Server</h1>
    <p>Open the console to see the output.</p>
    <script>
      var ws = new WebSocket("ws://localhost:4000/websocket");
      ws.onmessage = function (event) {
        console.log(event.data);
      };


    </script>
  </body>
  """

  plug(Plug.Logger)
  plug(:match)
  plug(:dispatch)

  get "/" do
    Logger.info("HI!!")
    send_resp(conn, 200, @html)
  end

  get "/websocket" do
    Logger.info("#{inspect(conn)}")

    conn
    |> WebSockAdapter.upgrade(RobotsServer.Socket, [], timeout: 60_000)
    |> halt()
  end

  match _ do
    send_resp(conn, 404, "not found")
  end
end
