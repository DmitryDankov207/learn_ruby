#write your code here
def add(a, b)
	a + b
end

def subtract(a , b)
	a - b
end

def sum(args)
	args.inject(0) { |sum, val| sum += val }
end

def multiply(args)
	args.inject(1) { |mul, val| mul *= val }
end

def factorial(num)
	if num == 1 || num == 0
		return 1
	end
	num * factorial(num - 1)
end

def power(num, power)
	num ** power
end