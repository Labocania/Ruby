class Book
	def initialize
		@title = nil
	end

	def title #get
		@title
	end

	def title=(title)
		@title = title #set
		@title.gsub!(/\w+/) { |word| word.capitalize! } unless @title.match(/\s/) #mutating!
		@title_ar = @title.split
		@title_ar[0].capitalize!
		@title_ar.each do |word| #mutating
			case word
			when "the","and", "a", "an", "in", "of"
				word
			else
				word.capitalize!								
			end
		end
		@title = @title_ar.join(" ")
	end
end