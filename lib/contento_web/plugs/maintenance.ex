defmodule ContentoWeb.Plug.Maintenance do
  import Plug.Conn, only: [halt: 1, put_resp_header: 3, send_resp: 3]
  import Phoenix.Controller, only: [render: 3]
  import Contento.Guardian.Plug, only: [authenticated?: 1]

  alias Contento.Themer

  def init(opts), do: opts

  def call(conn, _opts) do
    settings = conn.assigns[:settings]

    if settings.maintenance && !authenticated?(conn) do
      body = Themer.render(conn, "maintenance")

      conn
      |> put_resp_header("Content-Type", "text/html")
      |> send_resp(200, body)
      |> halt()
    else
      conn
    end
  end
end
