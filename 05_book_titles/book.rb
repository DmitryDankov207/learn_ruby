class Book
# write your code here
	attr_reader :title

	def title=(name)
		unless name.include? " "
			@title = titelize(name)
		else
			@title = name.split(" ").map.with_index do |word, idx|
				word = idx == 0 ? titelize(word, true) : titelize(word)
			end .join " "
		end
	end

	private

	def get_untitable_words
		["a", "the", "in", "on", "at", "and", "of", "an"]
	end

	def titelize(word, first = false)
		if first || get_untitable_words.include?(word) == false
			return word[0].upcase + word[1..-1]
		else
			return word
		end
	end
end
