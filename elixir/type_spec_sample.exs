# Practice Typespecs and custom types elixir
# Author: Ananth Madhavan 8th Jan 2016
defmodule Calc do
  @spec add(number, number) :: {number, String.t}
  def add(n1, n2) do: {n1 + n2, "Sample custom type"}

  @spec multiply(number, number) :: {number, String.t}
  def multiply(n1, n2) do: {n1 * n2}, "Another return type"
end

IO.puts Calc.multiply(12,13)
IO.puts Calc.add(12, 12)
