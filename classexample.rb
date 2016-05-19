require 'pry'

class Cat
  def initialize (colour, age, evilness)
    @colour = colour
    @age = age
    if evilness > 50
      @evilness = 'very'
    else
      @evilness = 'not'
    end
  end

  def who
    p "This cat is #{@colour} and #{@age} years old and #{@evilness} evil."
  end

end

binding.pry
