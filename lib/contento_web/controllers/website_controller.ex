defmodule ContentoWeb.WebsiteController do
  use ContentoWeb, :controller

  alias Contento.Content
  alias ContentoWeb.Themer

  plug :put_layout, false
  plug :put_view, false

  action_fallback ContentoWeb.FallbackController

  def index(conn, _params) do
    posts = Content.list_posts(published: true)
    do_render(conn, 200, "index.html", posts: posts)
  end

  def page_or_post(conn, %{"slug" => slug} = _params) do
    cond do
      page = Content.get_page(slug: slug) ->
        do_render(conn, 200, "page.html", page: page)
      post = Content.get_post(slug: slug) ->
        do_render(conn, 200, "post.html", post: post)
      true ->
        {:error, :website_not_found}
    end
  end

  def assets(conn, %{"file" => file}) do
    filepath = Path.join(["priv/themes/", conn.assigns[:settings].theme.alias, "assets"] ++ file)

    if File.exists?(filepath) && !File.dir?(filepath) do
      send_file(conn, 200, filepath)
    else
      {:error, :website_not_found}
    end
  end

  defp do_render(conn, status, template, assigns \\ []) do
    body = Themer.render(conn, template, assigns)

    conn
    |> put_resp_header("Content-Type", "text/html")
    |> send_resp(status, body)
  end
end
