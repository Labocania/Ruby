class Friend
	def greeting(name = nil)
		return "Hello!" if name == nil
		return "Hello, #{name}!" if name
	end
end