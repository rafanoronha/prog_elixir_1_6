defmodule MyList do
  def len([]) do
    0
  end
  def len([_head | tail]) do
    1 + len(tail)
  end

  def square([]) do
    []
  end
  def square([head | tail]) do
    [head * head | square(tail)]
  end

  def add_1([]) do
    []
  end
  def add_1([head | tail]) do
    [head + 1 | add_1(tail)]
  end
end