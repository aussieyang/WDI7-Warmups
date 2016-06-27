class Calc
  def ask(str)
    str = str.downcase.gsub("what", "").gsub("is", "").gsub("by", "").gsub("?", "").gsub("plus", "+").gsub("minus", "-").gsub("multiplied", "*").gsub("divided", "/")
    answer = eval(str) # Remember eval is bad practice
    return answer
  end
end

calc = Calc.new

puts calc.ask("What is 3 multiplied by 2?")



# Regex notes:
# =============
# For pattern matching - see Rubular
