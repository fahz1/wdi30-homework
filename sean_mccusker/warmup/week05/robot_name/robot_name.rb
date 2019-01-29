# Robot Name
# You run a robot factory. As robots are created, they roll off the conveyor belt as empty, mindless husks of machinery -- until you first boot them up.
#
# The first time you boot them up, a random name is randomly generated, and assigned to itself by the robot.
#
# Names typically take the format of things like "BX777" or "SD234".
#
# For instance:
#
# robot1 = Robot.new
#
# puts robot1.name
# => "BX777"
#
# robot2 = Robot.new
#
# puts robot2.name
# => "SD234"
#
# puts robot2.name
# => "SD234"
# Every once in a while we need to reset a robot to its factory settings, which
# means that their name gets wiped. The next time you ask, it gives a new name.
#
# if I say:
#
# robot3 = Robot.new
#
# puts robot3.name
# => "RF629"
#
# robot3.reset
#
# puts robot3.name
# => "ZC532"
# Extensions
# Counters
# It's important that we not overwork our robots. While resetting to factory defaults
# is great, the wear and tear on the robot mechanisms doesn't go away.
#
# For every action our robot takes, we should keep track of it.
#
# robot3 = Robot.new
# puts robot3.name
# puts robot3.name
#
# robot3.reset
# puts robot3.name
# puts robot3.name
#
# puts robot3.instruction_count
# => 5
# Robot Time
# Number of instructions is important, but so is the total age of the robot.
#
# robot3 = Robot.new
# puts robot3.timers
# => "21 seconds since last boot, 21 seconds since creation"
#
# robot3.reset
# puts robot3.timers
# => "8 seconds since last boot, 29 seconds since creation"

  class Robot
    def initialize
  end

  def make_name
    letters = ("A".."Z").to_a.sample(2)
    numbers = (0..9).to_a.sample(3)
    name_pool = letters.concat(numbers).join
  end

  def name
    @name
  end

  def reset
    @name = make_name
  end

end
robot1 = Robot.new
puts robot1.name

puts "=" *10

robot2 = Robot.new
puts robot2.name
puts robot2.name
