# define class School
class School
  attr_reader :name, :database

  def initialize(name)
    # Instance variables
    @name = name
    @database = {}
  end

  def db
    @database
  end

  def add(student, grade)
    @database[grade] ||= []
    @database[grade] << name
    #|| is a shorthand for :
    # if @database[grade]          #if array exists
        # database[grade] << name
        # else
        # @database[grade] = [name]
  end

  def grade(grade)
    @database[grade]
  end

  def sort
    @database.sort.inject({}) do |memo, elem|     #look into inject
      memo[elem.first] = elem.last.sort
      memo
    end
  end

end
