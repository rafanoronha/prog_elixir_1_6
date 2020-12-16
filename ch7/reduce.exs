defmodule MyList do
  def reduce([], value, _fun) do
    value
  end
  def reduce([head | tail], value, fun) do
    reduce(tail, fun.(value, head), fun)
  end
end