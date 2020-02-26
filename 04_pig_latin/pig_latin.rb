#write your code here
module PigLatin
	def vowel?(ch)
		['a','e', 'i', 'o', 'u'].include? ch.downcase
	end

	def translate_word(word)
		word.chars.map.with_index do |ch, idx|
			if vowel? ch
				if idx == 0 
					return word + "ay"
				elsif ch.downcase == 'u' && idx > 0
					return word[(idx + 1)..-1] + word[0..idx] + "ay"
				else
					return word[idx..-1] + word[0..(idx - 1)] + "ay"
				end
			elsif idx == word.chars.length
				return word + "ay"
			end
		end	
	end

	def translate(str)
		unless str.include? " "
			return translate_word str 
		else
			text = str.split(" ")
			text.map! { |word| word = translate_word word}
			return text.join " "
		end
	end
end
