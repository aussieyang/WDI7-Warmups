def binarify(num)

  binary = ""

  while (num != 0)
    binary = (num % 2).to_s + binary
    num = num / 2
  end

  return binary
end

p binarify(12)



def decify(bin)

value = 0

  bin.split('').reverse.each.with_index do |digit, index|
    if digit == '1'
      value += 2**index
    end
  end

  return value
end

p decify('1000111')
