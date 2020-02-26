#write your code here
def echo(str)
	str
end

def shout(str)
	str.upcase
end

def repeat(str, num = 2)
	Array.new(num, str).join(" ")
end

def start_of_word(word, size)
	word[0..(size - 1)]
end

def first_word(text)
	text.split(" ")[0]
end

def titleize(str)
	text = str.split " "
	text.map! do |word| 
		if word.length > 4 || text.index(word) == 0 || 
					text.index(word) == text.length - 1
			word[0].upcase + word[1..-1]
		else 
			word
		end
	end
	text.join " "
end