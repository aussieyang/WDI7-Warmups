require 'pry'
class Robot
  attr_reader :mac_address, :name

  def initialize
    @counter = 0
    @name = "#{prefix}#{suffix}"
    @mac_address = "#{prefix}#{suffix}#{prefix}#{suffix}#{prefix}#{suffix}"
    @counter += 1
    @start_time = Time.new
  end

  def name
    @counter += 1
    @name
  end

  def prefix
    ('A'..'Z').to_a.sample(2).join
  end

  def suffix
    (0..9).to_a.sample(3).join
  end

  def reset
    @counter += 1
    @reset_time = Time.new
    @name = "#{prefix}#{suffix}"
  end

  def instruction_count
    "#{ @name } has had #{ @counter } instructions."
  end

  def timers
    @time_now = Time.new
    "#{ (@time_now - @reset_time).round  } seconds since last reboot, #{ (@time_now - @start_time).round } since creation."
  end

  def to_s
    puts "Robot Name: #{ @name }, MAC address #{ @mac_address }, Reset time #{ @reset_time }, Instruction count #{ @counter }"
  end
end


robot1 = Robot.new

robot2 = Robot.new

robot3 = Robot.new

puts robot1.to_s
"\n"
puts robot2.to_s
"\n"
puts robot3.to_s
"\n"


puts "Robot 1: "
robot1 = Robot.new
puts robot1.name
puts robot1.name
puts robot1.name

puts "Robot 2: "
robot2 = Robot.new
puts robot2.name
puts robot2.name
puts robot2.name

puts "Robot 3: "
robot3 = Robot.new
puts robot3.name
puts robot3.name
puts "Resetting to factory settings."
robot3.reset
puts robot3.name
puts robot3.name


# binding.pry
