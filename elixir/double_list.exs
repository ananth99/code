# Elixir program to double items in a list
# Author: Ananth Madhavan
defmodule Math do
  def double_list([head|tail]) do
    [head * 2|double_list(tail)]
  end

  def double_list([]) do
    []
  end
end

IO.puts Math.double_list([1,2,3])
