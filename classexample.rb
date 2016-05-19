require 'pry'

# Remember that a class and an instance of the class are different things.
# The methods we write here can only be called on the instances.f
# The initialize method is a special Ruby method that runs when .new() is called.

# Class makes a factory pumping out Cat instances
class Cat
  # Every time Cat.new() is called, theses attributes are passed in
  def initialize (colour, age, evilness)
    @colour = colour
    @age = age
    if evilness > 50
      @evilness = 'very'
    else
      @evilness = 'not'
    end
  end

  # instancename.who will return this string
  def who
    p "This cat is #{@colour} and #{@age} years old and #{@evilness} evil."
  end
end

# binding.pry
