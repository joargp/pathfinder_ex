defmodule Pathfinder do
  def query(json, path) when is_binary(json) do
    NodeJS.call({"jsonpath", "query"}, [json, path])
  end

  def query(json, path, count) when is_binary(json) do
    NodeJS.call({"jsonpath", "query"}, [json, path, count])
  end
end
