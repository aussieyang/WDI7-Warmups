class Say

  def self.in_english(int)
    numbers_to_name = {
        1000000 => "million",
        1000 => "thousand",
        100 => "hundred",
        90 => "ninety",
        80 => "eighty",
        70 => "seventy",
        60 => "sixty",
        50 => "fifty",
        40 => "forty",
        30 => "thirty",
        20 => "twenty",
        19=>"nineteen",
        18=>"eighteen",
        17=>"seventeen",
        16=>"sixteen",
        15=>"fifteen",
        14=>"fourteen",
        13=>"thirteen",
        12=>"twelve",
        11 => "eleven",
        10 => "ten",
        9 => "nine",
        8 => "eight",
        7 => "seven",
        6 => "six",
        5 => "five",
        4 => "four",
        3 => "three",
        2 => "two",
        1 => "one"
      }
    zero = ""

    numbers_to_name.each do |num, name|
      if int == 0
        return zero
      elsif int.to_s.length == 1 && int/num > 0
        return "#{name}"
      elsif int < 100 && int/num > 0
        return "#{name}" if int%num == 0
        return "#{name} " + in_english(int%num)
      elsif int/num > 0
        return str + in_english(int/num) + " #{name} " + in_english(int%num)
      end
    end
  end

end

puts Say.in_english(50)
puts Say.in_english(99)


#answer
# class Say
#   def initialize(number)
#     @number_to_convert = number
#     @numbers = {0 => 'Zero', 1 => 'One', 2 => 'Two', 3 => 'Three', 4 => 'Four', 5 => 'Five', 6 => 'Six', 7 => 'Seven',
#     8 => 'Eight', 9 => 'Nine', 10 => 'Ten', 11 => 'Eleven', 12 => 'Twelve', 13 => 'Thirteen', 14 => 'Fourteen', 15 => 'Fifteen',
#     16 => 'Sixteen', 17 => 'Seventeen', 18 => 'Eighteen', 19 => 'Nineteen', 20 => 'Twenty', 30 => 'Thirty', 40 => 'Fourty', 50 => 'Fifty',
#     60 => 'Sixty', 70 => 'Seventy', 80 => 'Eighty', 90 => 'Ninety'}
#   end
#   def in_english
#     if @number_to_convert < 20
#       p @numbers[@number_to_convert]
#     elsif @numbers[@number_to_convert] != -1
#       @ten_floor = @number_to_convert - (@number_to_convert % 10)
#       @second_num = (@number_to_convert - @ten_floor)
#       if @second_num == 0
#         p @numbers[@ten_floor]
#       else
#         p @numbers[@ten_floor] + "-" + @numbers[@second_num]
#       end
#     end
#   end
# end
