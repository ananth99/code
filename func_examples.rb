# Partially applied functions
sum = -> (a,b) {a+b}
increment = -> c { sum.(1,c)}
increment[3] # will return 4

%w(Ruby is awesome).map &:upcase # Will return ["RUBY", "IS", "AWESOME"]

def shuffle_letters(word)
	word.split(//).join
end

%(ruby is awesome).map &method(:shuffle_letters)

# nth fibo number
def fibo(n)
	seq = []
	(0..n).each do |n|
		if n < 2
			seq << n
		else
			seq << seq[-1] + seq[-2]
		end
	end
	seq.last
end

