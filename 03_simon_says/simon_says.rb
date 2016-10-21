def echo(word)
	p "#{word}"
end

def shout(word)
	p "#{word}".upcase
end

def repeat(word, a = 2)
	p "#{(word + " ") * (a-1) + word}"
end

def start_of_word(word, pos = 0)
	p "#{word[0..pos-1]}"
end

def first_word(word)
	p "#{word}".split[0]
end

def titleize(word)
	littles = ['the', 'and', 'of', 'over']
	word.capitalize.split.map{|str| littles.include?(str) ? str : str.capitalize}.join(' ')	
end
