defmodule Pathfinder do
  def query(json, path) when is_binary(json) do
    NodeJS.call({"jsonpath", "query"}, [json, path])
  end
end
