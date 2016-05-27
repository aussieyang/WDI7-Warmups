
class Say
  def initialize(num)
    @num = num
    @array_of_numbers = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
    @array_of_teens = ['ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
    @array_of_tens = ['twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  end

  def in_english
    case @num
    when (0..9)
      puts @array_of_numbers[@num]
    when (10..19)
      puts @array_of_teens[@num-10]
    when (20..99)
      splitter = @num.to_s.split(//)
      tens = splitter[0].to_i
      units = splitter[1].to_i
      if units != 0
        puts "#{@array_of_tens[tens-2]}-#{@array_of_numbers[units]}"
      else
        puts "#{@array_of_tens[tens-2]}"
      end
    else
      puts "Outside the range of valid numbers"
    end
  end
end

Say.new(50).in_english
Say.new(10).in_english
Say.new(100).in_english
Say.new(-1).in_english
Say.new(19).in_english
Say.new(22).in_english
