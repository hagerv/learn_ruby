def translate(phrase)
	vowels = ["a", "e", "i", "o", "u"]
	phrase_array = phrase.split(" ")
	full_phrase = []

	phrase_array.each do |word|
		word_array = word.split(//)
		first_sound = []

		word_array.each_with_index do |char, index|
			if vowels.include?(char)
				break unless char == "u" && word_array[index - 1] == "q"
			end
			first_sound.push(char)
		end

		first_sound_string = first_sound.join
		rest_of_word = word_array.join

		rest_of_word.sub!(first_sound_string, "")
		full_phrase.push(rest_of_word + first_sound_string + "ay")
	end

	return full_phrase.join(" ")
end