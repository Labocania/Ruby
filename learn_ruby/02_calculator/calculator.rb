def add(x, y)
	x + y
end

def subtract(x, y)
	x - y
end

def sum(array)
	return 0 if array.empty?
	return array.inject { |acc, x| acc + x }
end

def multiply(*num)
	num.inject { |acc, x| acc * x }
end

def power(x, y)
	x ** y
end

def factorial(num)
	return 1 if num <= 1
	num * factorial(num - 1)
end