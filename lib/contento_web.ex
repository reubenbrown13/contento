defmodule ContentoWeb do
  @moduledoc """
  The entrypoint for the web interface, such as controllers,
  views, channels and so on.
  """

  def controller do
    quote do
      use Phoenix.Controller, namespace: ContentoWeb

      import Plug.Conn
      import ContentoWeb.Router.Helpers
      import ContentoWeb.Gettext
    end
  end

  def view do
    quote do
      use Phoenix.View, root: "lib/contento_web/templates", namespace: ContentoWeb
      use Phoenix.HTML

      import Phoenix.Controller, only: [get_flash: 2, view_module: 1]
      import ContentoWeb.Router.Helpers
      import ContentoWeb.ErrorHelpers
      import ContentoWeb.Gettext
    end
  end

  def router do
    quote do
      use Phoenix.Router

      import Plug.Conn
      import Phoenix.Controller
    end
  end

  def channel do
    quote do
      use Phoenix.Channel

      import ContentoWeb.Gettext
    end
  end

  @doc """
  When used, dispatch to the appropriate controller/view/etc.
  """
  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
