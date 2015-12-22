# test_cases = gets.chomp.to_i
# raise "invalid argument" if (!test_cases.is_a? Integer and test_cases >= 0 and test_cases > 99999)
# count = 0
# cases = []
# while counter < test_cases
#   n = gets.chomp.to_i
#   raise "invalid input" if (!n.is_a? Integer and n>=0 and n > 40000000000000000)
#   cases << n
#   counter += 1
# end

def fib(n)
  return n if (0..1).include? n
  fib(n-1) + fib(n-2)
end

# Refactor 1
def fib_sum_lazy(limit)
  even_fib = []
  (1..Float::INFINITY).lazy.each do |num|
    break if fib(num) >= limit
    even_fib << fib(num) if fib(num).even?
  end
   puts even_fib.reduce(:+)
end
