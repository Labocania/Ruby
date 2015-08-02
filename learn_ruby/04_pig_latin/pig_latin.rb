def translate(phrase)
	if phrase.match(/\s/)
		multiple_words(phrase)
	else
		one_word(phrase)
	end
end

def multiple_words(words)
	string_array = words.split
	string_array.each do |string|
		if string.match(/\A[aeiou]{1}/)
			string << "ay"
		elsif string.match(/\A[s]|[q][u]/)		
			pattern = string[/\A[s]|[q][u]/]
			string.gsub!(/\A[s]|[q][u]/, "")
			string << pattern << "ay"
		elsif string.match(/\A[^aeiou]{1,3}/)
			pattern = string[/\A[^aeiou]{1,3}/]
			string.gsub!(/\A[^aeiou]{1,3}/, "")
			string << pattern << "ay" 			
		else
			"Fuck!"
		end
	end
	string_array.join(" ")
end

def one_word(string)
	if string.match(/\A[aeiou]{1}/)
		string << "ay"
		string
	elsif string.match(/\A[s][q][u]|[q][u]/)		
		pattern = string[/\A[s][q][u]|[q][u]/]
		string.gsub!(/\A[s][q][u]|[q][u]/, "")
		string << pattern << "ay"
		string
	elsif string.match(/\A[^aeiou]{1,3}/)
		pattern = string[/\A[^aeiou]{1,3}/]
		string.gsub!(/\A[^aeiou]{1,3}/, "")
		string << pattern << "ay"
		string 	
	else
		"Fuck!"
	end
end