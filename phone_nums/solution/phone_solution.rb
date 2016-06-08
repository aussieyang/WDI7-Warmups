class Phone

  def initialize(number)
    @number = number
  end

  def number
    if /\W/ === @number
      @number.gsub(/\p{^ALnum}/,'')
      elsif @number[0] != "1" && @number.length > 10
        @number = "0000000000"
      elsif @number.length > 10
        @number.slice!(0)
        @number
      else @number.length < 10
        @number = "0000000000"
    end
  end

  def area_code
    @number[0..2]
  end

  def to_s
    "(#{area_code}) #{@number[3..5]}-#{@number[6..10]}"
  end
end
