class Dictionary
	def initialize
		@d = { }
	end

	def add(var)
		return @d.merge!(var) if var.is_a? Hash
		return @d[var] = nil if var.is_a? String
	end

	def entries
		@d
	end

	def keywords
		@d.keys.sort
	end

	def include?(key)
		@d.include? key
	end

	def find(key)
		@hash_return = @d.select { |keys, value|  keys.include? key }
	end

	def printable
			array_hash = @d.sort_by { |key, value| key }
			new_hash = Hash[array_hash]
			string = ""
			new_hash.each_pair { |key, value| string << "[#{key}] \"#{value}\"\n"  }
			string.chomp!
	end
end