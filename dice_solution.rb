require 'pry'


class Die

	def roll
		@number = rand(6) + 1
	end

	def number
		return @number
	end

end
# binding.pry

dice = Die.new

dice.roll
puts "your rolls was a #{dice.number}"
dice.roll
puts "your rolls was a #{dice.number}"
dice.roll
puts "your rolls was a #{dice.number}"
dice.roll
puts "your rolls was a #{dice.number}"
dice.roll
puts "your rolls was a #{dice.number}"
