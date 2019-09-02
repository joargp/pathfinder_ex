# Pathfinder

jsonpath in elixir through nodejs

made possible thanks to reverly'

⚠️WIP. This is an early and uncomplete release, expect breaking changes

## Installation

### Prerequisite
- Installation of nodejs

### Steps
1. Add pathfinder to your mix.exs
```elixir
def deps do
  [
    {:pathfinder, "~> 0.1.0"}
  ]
end
```
1. Run `mix deps.get`
1. Copy NodeJS files
`cp -a deps/pathfinder/node ./`
1. Install NodeJS dependencies
`cd node && npm install`

## Test drive it

```elixir
⇒  iex -S mix
Erlang/OTP 22 [erts-10.4.1] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:1] [hipe] [dtrace]

Interactive Elixir (1.8.2) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> Pathfinder.query("{\"test\": 1}","$..test")
{:ok, [1]}
iex(2)>
```
Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/pathfinder](https://hexdocs.pm/pathfinder).

## Dev status

- [x] .query/2
- [ ] .paths
- [ ] .nodes
- [ ] .parse
- [ ] .parent
- [ ] .value
- [ ] .stringify


