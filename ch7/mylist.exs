defmodule MyList do
  def len([]) do
    0
  end
  def len([head | tail]) do
    1 + len(tail)
  end
end