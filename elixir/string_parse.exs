prefix = fn a -> (fn b -> a <> b end) end

defmodule Chop do
  def sum([]), do: 0
  def sum([_head | tail]), do: (1 + sum(tail))
end
