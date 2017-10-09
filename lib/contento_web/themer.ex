defmodule ContentoWeb.Themer do
  def render(conn, template, assigns \\ []) do
    block = conn
    |> get_theme()
    |> template_path(template)
    |> File.read!()
    |> inject_imports()
    |> EEx.eval_string([
      assigns: assigns ++ [conn: conn] ++ Map.to_list(conn.assigns)
    ])
    |> String.trim()
  end

  defp get_theme(conn), do: conn.assigns[:settings].theme

  defp template_path(theme, template),
    do: Path.join(["priv/themes", theme.alias, "templates", template <> ".eex"])

  # FIXME: The purpose for this function is to inject necessary functionality
  # into templates through imports. This should be replaced with a better approach
  # to render the templates. Suggestions are appreciated!
  defp inject_imports(template) do
    """
    <% import ContentoWeb.Themer %>
    <% import ContentoWeb.ThemeHelpers %>
    <% import ContentoWeb.Router.Helpers %>
    """ <> template
  end
end
