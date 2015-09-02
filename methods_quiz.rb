module MethodsQuiz

#1
	def has_teen(d, e, f)
		if (d >= 13 && d <= 19) || (e >= 13 && e <= 19) || (f >= 13 && f <= 19)
			return true
		else
			return false
		end

	end



#2
	def not_string(strings)
		if strings.start_with?("not")
			return strings
		else
			return "not" + strings
		end
	end




#3
	def icy_hot?(a, b)
		if (a >= 100 && b <= 0) || (b >= 100 && a <= 0)
			return true
		else
			return false
		end
	end
	
#4
	def closer_to(answer, g5, g6)
		close1 = (g5 - answer).abs
		close2 = (g6 - answer).abs
		if close1 < close2
			return g5
		elsif close2 < close1
			return g6
		else
			return 0
		end
	end

#5
	def two_as_one?(a, b, c)
		ab = a + b
		bc = b + c
		ac = a + c
	if ab == c || bc == a || ac == b
		return true
	else
		return false
	end
	end

	def pig_latinify(newstring)
		str = newstring.downcase.gsub(/\s+/, "")
		if str.start_with?("a") || str.start_with?("e") || str.start_with?("i") || str.start_with?("o") || str.start_with?("u")
			return str + "way"
		elsif str == "shit" || str == "fuck" || str == "ass" || str == "hell" || str == "damn" || str == "dick" || str == "pussy"
			return str.gsub("a", "*").gsub("e", "*").gsub("i", "*").gsub("o", "*").gsub("u", "*")
		else
			suffix = str[0]
			str[0] = ""
			return str + suffix + "ay"
		end
	end
end