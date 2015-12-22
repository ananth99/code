test_cases = gets.chomp.to_i
raise "invalid argument" if (!test_cases.is_a? Integer and test_cases >= 0 and test_cases > 99999)
counter = 0
cases = []
while counter < test_cases
  n = gets.chomp.to_i
  raise "invalid input" if (!n.is_a? Integer and n>=0 and n > 999999999)
  cases << n
  counter += 1
end

cases.each do |cas|
  # puts (0..(cas-1)).select {|n| n%3==0 || n%5==0}.reduce(:+)
  sum1 = (cas/2)*(0 + (cas-1)*3)
  sum2 = (cas/2)*(0+ (cas-1)*5)
  sum3 = (cas/2)*(0+(cas-1)*15)
  sum = sum1+sum2-sum3
  puts sum
end