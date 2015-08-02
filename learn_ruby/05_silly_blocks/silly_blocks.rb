def reverser
	yield.gsub(/\w+/) { |w| w.each_char.to_a.reverse.join }
end

def adder(n = 1)
	yield + n
end

def repeater(n = 1)
	n.times { yield }
end