defmodule Contento.Application do
  use Application

  def start(_type, _args) do
    children = [
      Contento.Repo,
      ContentoWeb.Endpoint,
    ]

    opts = [strategy: :one_for_one, name: Contento.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    ContentoWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
