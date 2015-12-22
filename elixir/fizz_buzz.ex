# Program to solve FizzBuzz written in Elixir
# Author: Ananth 22nd Dec 2015
defmodule FizzBuzz do
  def sample_list([]) do
    IO.puts ""
  end

  def sample_list([head|tail]) when rem(head,3) == 0 do
    IO.puts "#{head} Fizz"
    sample_list(tail)
  end

  def sample_list([head|tail]) when rem(head,5) == 0 do
    IO.puts "#{head} Buzz"
    sample_list(tail)
  end

  def sample_list([head|tail]) when rem(head,3) == 0 and rem(head,5) == 0 do
    IO.puts ""
    sample_list(tail)
  end

  def sample_list([head|tail]) do
    sample_list(tail)
  end
end
