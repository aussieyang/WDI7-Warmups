class Say
  def initialize(input)
    @input = input
    @small_num = ["zero", "one", "two", "three", "four", "five",
      "six", "seven", "eight", "nine", "ten", "eleven", "twelve",
      "thirteen", "fourteen", "fifteen", "sixteen", "seventeen",
      "eighteen", "nineteen"]

    @large_num = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy",
      "eighty", "ninety"]
  end

  def in_english
    if @input < 20
      @conversion = @small_num[@input]
    elsif @input < 100
      @input = @input.to_s
      @small_digit = @input[-1]
      if @small_digit != "0"
        @small_digit = @small_digit.to_i
        @small_digit = @small_num[@small_digit]
        @large_digit = @input[0]
        @large_digit = @large_digit.to_i - 2
        @large_digit = @large_num[@large_digit]
        @conversion = @large_digit + "-" +  @small_digit
      else
        @small_digit = ""
        @large_digit = @input[0]
        @large_digit = @large_digit.to_i - 2
        @large_digit = @large_num[@large_digit]
        @conversion = @large_digit
      end

    else
      puts "Number must be between 0 and 99, inclusive"
    end
    if @conversion != nil
      puts @conversion
    end
  end
end

Say.new(2).in_english
Say.new(55).in_english
Say.new(99).in_english
Say.new(0).in_english
Say.new(105).in_english
Say.new(77).in_english
Say.new(50).in_english
