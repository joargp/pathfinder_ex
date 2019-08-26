defmodule PathfinderTest do
  use ExUnit.Case
  doctest Pathfinder

  test "query returs array of result if path matches json" do
    json = "{\"name\": {\"bobby\": \"drop tables\"}}"
    path = "$..name"
    assert Pathfinder.query(json, path) == {:ok, [%{"bobby" => "drop tables"}]}
  end

  test "query returs [] if path does not match json" do
    json = "{\"name\": \"bobby\"}"
    path = "$..nam"
    assert Pathfinder.query(json, path) == {:ok, []}
  end

  test "query returs :error with malformed json" do
    json = "{\"name\"\-: \"bobby\"}"
    path = "$..name"
    {result, _} = Pathfinder.query(json, path)
    assert result == :error
  end

  test "query returns all matching items" do
    json = "{\"name\"\: [\"bobby\",\"sox\", \"here\"]}"
    path = "$..name[:2]"
    assert Pathfinder.query(json, path) == {:ok, ["bobby", "sox"]}
  end
end
