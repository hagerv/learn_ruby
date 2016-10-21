class Book


	def title=(title)
		no_capitalize = ['a', 'an', 'the', 'and', 'with', 'into', 'in', 'from', 'for', 'about', 'at', 'as', 'near', 'to', 'of', 'on', 'onto', 'over', 'up', 'upon', 'than']

		title_arr = title.split(" ")
		title_arr.map do |word, index|
			unless no_capitalize.include?(word)
				word.capitalize!
			end
		end

		title_arr[0].capitalize!
		title_arr[-1].capitalize!

		@title = title_arr.join(" ")

	end

	def title
		@title
	end

end
