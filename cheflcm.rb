# CHEFLCM CodeChef problem
# Author: Ananth Madhavan
# 9th April, 2015

t = gets.chomp.to_i
raise "invalid no: of test cases" unless (t <= 1000 && t >= 1)
results = []
while t > 0
  n = gets.chomp.to_i
  raise "invalid number" unless (n >=1 && n <= 1000000000)
  sum = 0
  for i in 1..n
    if n % i == 0
      sum += i
    end
  end
  results << sum
  t = t-1
end
results.each do |result|
  puts result
end




