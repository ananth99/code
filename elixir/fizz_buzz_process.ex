# FizzBuzz implementation using send/receive in Elixir
# Author: Ananth Madhavan
# 22nd, Dec 2015

# Anonymous function to send number to a process
defmodule FizzBuzzSend do
  def send(x) do
    send self, x
  end
end

IO.inspect Enum.map(1..100,&FizzBuzzSend.send(&1))


receive do
   x -> IO.puts "Hello #{x}"
  # x when rem(x,3) == 0 and rem(x,5) == 0 -> "FizzBuzz"
  # x when rem(x,3) == 0 -> "Fizz"
  # x when rem(x,5) == 0 -> "Buzz"
  # x -> IO.inspect x
end


