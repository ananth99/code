# Calculate sum of items in a list
# Author: Ananth Madhavan
defmodule Math do
  def sum_list([head|tail], acculmulator) do
    sum_list(tail, head + acculmulator)
  end

  def sum_list([], acculmulator) do
    acculmulator
  end
end