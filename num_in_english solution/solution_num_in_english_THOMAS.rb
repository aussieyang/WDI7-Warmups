require 'pry'

class Say
  def initialize(number)
    @number_to_convert = number
    @numbers = {0 => 'Zero', 1 => 'One', 2 => 'Two', 3 => 'Three', 4 => 'Four', 5 => 'Five', 6 => 'Six', 7 => 'Seven',
    8 => 'Eight', 9 => 'Nine', 10 => 'Ten', 11 => 'Eleven', 12 => 'Twelve', 13 => 'Thirteen', 14 => 'Fourteen', 15 => 'Fifteen',
    16 => 'Sixteen', 17 => 'Seventeen', 18 => 'Eighteen', 19 => 'Nineteen', 20 => 'Twenty', 30 => 'Thirty', 40 => 'Fourty', 50 => 'Fifty',
    60 => 'Sixty', 70 => 'Seventy', 80 => 'Eighty', 90 => 'Ninety'}
  end
  def in_english
    if @number_to_convert < 20
      p @numbers[@number_to_convert]
    elsif @number_to_convert < 100
      @ten_floor = @number_to_convert - (@number_to_convert % 10)
      @second_num = (@number_to_convert - @ten_floor)
      if @second_num == 0
        p @numbers[@ten_floor]
      else
        p @numbers[@ten_floor] + "-" + @numbers[@second_num]
      end
    end
  end
end

pry.bind()
