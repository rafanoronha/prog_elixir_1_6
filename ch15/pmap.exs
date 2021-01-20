defmodule Parallel do
  import Enum, only: [map: 2]

  def pmap(collection, fun) do
    me = self()
    collection
    |> map(fn (elem) ->
        spawn_link fn -> send(me, { self(), fun.(elem) }) end
      end)
    |> map(fn (pid) ->
        receive do
          { ^pid, result } ->
            result
        end
      end)
  end
end
