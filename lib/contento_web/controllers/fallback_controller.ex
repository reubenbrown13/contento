defmodule ContentoWeb.FallbackController do
  use ContentoWeb, :controller

  alias ContentoWeb.Themer
  
  def call(conn, {:error, :website_not_found}) do
    body = Themer.render(conn, "not_found.html")

    conn
    |> put_resp_header("Content-Type", "text/html")
    |> send_resp(404, body)
  end
end
