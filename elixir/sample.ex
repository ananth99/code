# First program in elixir. :)
# Author: Ananth MAdhavan
# 17th December 2015
defmodule Sample do
  def is_zero?(0) do
    true
  end

  def is_zero?(a) when is_number(a) do
    false
  end
end