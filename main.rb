# require_relative './lib/constants'
require_relative './lib/robot'

robot = Robot.new()

# EXAMPLE A
puts "*" * 20 + " Example A "  + "*" * 20
print "Initial position : " + robot.report().to_s + "\n"
puts " "

puts "Placing at [0,0,\"NORTH\"]"
robot.place(0,0,"NORTH")

puts "Moving forward"
robot.move()

print "Current position : " + robot.report().to_s + "\n"
puts " "
puts "*" * 50


# EXAMPLE B
puts "*" * 20 + " Example B "  + "*" * 20
print "Initial position : " + robot.report().to_s + "\n"
puts " "

puts "Placing at [0,0,\"NORTH\"]"
robot.place(0,0,"NORTH")

puts "Turning left"
robot.left()

print "Current position : " + robot.report().to_s + "\n"
puts " "
puts "*" * 50


# EXAMPLE C
puts "*" * 20 + " Example C "  + "*" * 20
print "Initial position : " + robot.report().to_s + "\n"
puts " "

puts "Placing at [1,2,\"EAST\"]"
robot.place(1,2,"EAST")

puts "Moving forward"
robot.move()
puts "Moving forward"
robot.move()
puts "Turning left"
robot.left()
puts "Moving forward"
robot.move()

print "Current position : " + robot.report().to_s + "\n"
puts " "
puts "*" * 50
