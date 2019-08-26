defmodule Pathfinder.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    import Supervisor.Spec
    # List all child processes to be supervised
    children = [
      supervisor(NodeJS, [
        [path: "node", pool_size: 4]
      ])
      # supervisor(NodeJS, [[path: "/node", pool_size: 4]])
      # Starts a worker by calling: Pathfinder.Worker.start_link(arg)
      # {Pathfinder.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Pathfinder.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
