puts "Enter any number to advance the Roman Empire... "
search = gets.chomp.to_i

def roman(n)
  thousands = { n.div(1000) => "M" }
  hundreds = { n.modulo(1000).div(100) => [thousands.values.first, "D", "C"] }
  tens = { n.modulo(1000).modulo(100).div(10) => [hundreds.values.first[-1], "L", "X"] }
  ones = { n.modulo(1000).modulo(100).modulo(10).div(1) => [tens.values.first[-1], "V", "I"] }
  str = ""

  str += thousands.values.first * thousands.keys.first

  [hundreds, tens, ones].each do |unit|
    digit = unit.keys.first
    next if digit == 0      # Skips this loop if digit is a zero and goes to the next
    letters = unit[digit]
    mod_result = digit % 5

    str += letters[1] if (5...9).include? digit # Adds the letter for the 5 unit if it's between 5-9
    case digit
      when 4 then str += letters[-1] + letters[1] # Adds the single letter and the 5 letter if the digit is 4
      when 9 then str += letters[-1] + letters[0] # Adds the sigle letter and the 10 letter if the digit is 9
      else str += letters[-1] * mod_result     # Else just add the amount of single units to the string
    end

  end

  puts "HAZZAR, #{str} is the magic number (v1) \n \n"
end

roman(search)


def numerals(number)
  result = ''
  ones = ['I','II','III','IV','V','VI','VII','VIII','IX']
  tens = ones.map { |str| str.gsub('V','L').gsub('X', 'C').gsub('I','X') }
  hundreds = ones.map { |str| str.gsub('V', 'D').gsub('I','C').gsub('X', 'M') }

  if (100..999) === number
    result = result + hundreds[number/ 100 -1]
    number = number % 100
  end
  if (10..99) === number
    result = result + tens[number/ 10 - 1]
    number = number % 10
  end
  if (1..9) === number
    result = result + ones[number -1] # finds the index of the search number in ones
  end
  puts "HAZZAR, #{result} is the magic number (v2)"
end

numerals(search)
