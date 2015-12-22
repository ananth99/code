# Alternative implementation of fizbuzz in Elixir
# Author: Ananth Madhavan Dec 22nd 2015
buzz_test = fn
(0,0,_) -> "FizzBuzz"
(0,_,_) -> "Fizz"
(_,0,_) -> "Buzz"
(_,_,n) -> n
end

fizzbuzz = fn(n) ->
  buzz_test.(rem(n,3),rem(n,5),n)
end

IO.inspect Enum.map(1..100,fizzbuzz)
