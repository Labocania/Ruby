class Temperature
	attr_accessor :faren_temp, :cel_temp

	def initialize(hash)
		@faren_temp = hash[:f] || nil 
		@cel_temp = hash[:c] || nil	
	end

	def in_fahrenheit
		return @faren_temp if @faren_temp
		return @faren_temp = @cel_temp * 1.8 + 32		
	end

	def in_celsius
		return @cel_temp if @cel_temp
		return @cel_temp = (@faren_temp - 32) * 5/9
	end


	def Temperature.from_celsius(temp)
		new(:c => temp)
	end

	def Temperature.from_fahrenheit(temp)
		new(:f => temp)
	end
end

class Celsius < Temperature
	def initialize(temp)
		@cel_temp = temp
	end
end

class Fahrenheit < Temperature
	def initialize(temp)
		@faren_temp = temp 
	end
end