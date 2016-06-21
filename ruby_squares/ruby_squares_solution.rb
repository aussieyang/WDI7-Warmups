require "pry"

def get_squares(array_of_nums)
	# Setup an empty array to store the perfect squares
  squares_array = []

  # Iterate over each number in the array and store it in a new array
	array_of_nums.map do |num|
		# Take the square root of each number in the array
    decimals = Math.sqrt(num)
		# Take the square root of each number in the array and convert it to an integer
    whole_numbers = Math.sqrt(num).to_i

		# if the decimal is equal to the whole number (2 == 2.0) AND the number is not already in the squares array
    if decimals == whole_numbers && squares_array.index(num) == nil
			# push the number into the squares array
      squares_array.push(num)
		end

	end
    puts squares_array.sort_by { |i| i.to_i }
		# puts squares_array.sort_by(&:to_i)
end

get_squares([4,1,16,1,10,35,22])
puts "~~~"
get_squares((1..16))
puts "~~~"
get_squares((1..100))

# binding.pry

# [1, 2, 3].map(&:to_s) known as Symbol#to_proc
# is the shorthand for...
# [1, 2, 3].map { |i| i.to_s }
