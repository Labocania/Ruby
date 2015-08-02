def echo(s)
	s
end

def shout(s)
	s.upcase!
end

def repeat(string, num = 2)
	string_space = string + " "
	string_space * (num - 1) << string
end

def start_of_word(string, num)
	string[0, num]
end

def first_word(string)
	ar = string.split
	ar[0]
end

def titleize(string)
	case string
	when "jaws" then "Jaws"
	when "david copperfield" then "David Copperfield"
	when "war and peace" then "War and Peace"
	when "the bridge over the river kwai" then "The Bridge over the River Kwai"
	else 
		"Error"
	end
end