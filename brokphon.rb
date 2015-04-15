# BROKPHON CodeChef Problem
# Author: Ananth Madhavan
# 8th April 2015
# require 'pry'
t = gets.chomp.to_i
raise "no: of test cases should be less than 5" unless t <= 5
total_count = [] 
while t > 0
  n = gets.chomp.to_i
  a = []
  count = 0
  a = gets.split(" ")
  raise "array size mismatch!" unless a.size == n
  # 1 1 1 3 3 3 2
  # 1 3 1 1 1 
  for i in 0..(a.size-1)
    if (i == 0 && a[i] != a[i+1])
      # binding.pry
      count = count + 1
    elsif (i == (a.size - 1) && a[i] != a[i-1])
      count = count + 1
    elsif ((a[i] !=a[i+1] || a[i] !=a[i-1]) && (i != 0 && i !=(a.size-1)))
      count = count + 1
    end
  end
  total_count << count
  t = t-1
end
total_count.each do |count|
  puts count
end