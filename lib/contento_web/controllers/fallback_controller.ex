defmodule ContentoWeb.FallbackController do
  use ContentoWeb, :controller

  alias Contento.Themer

  def call(conn, {:error, :website_not_found}) do
    body = Themer.render(conn, "not_found")

    conn
    |> put_resp_header("Content-Type", "text/html")
    |> send_resp(404, body)
  end
end
