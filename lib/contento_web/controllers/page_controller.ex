defmodule ContentoWeb.PageController do
  use ContentoWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
