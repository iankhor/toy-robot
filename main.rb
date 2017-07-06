# require_relative './lib/constants'
require_relative './lib/robot'

robot = Robot.new()

print "Initial position : " + robot.report().to_s + "\n"
puts " "

puts "Placing at [2,2,\"SOUTH\"]"
robot.place(2,2,"SOUTH")

print "Current position : " + robot.report().to_s + "\n"
puts " "

puts "Moving forward"
robot.move()

print "Current position : " + robot.report().to_s + "\n"
puts " "

puts "Turning left"
robot.left()

print "Current position : " + robot.report().to_s + "\n"
puts " "

puts "Turning right"
robot.right()

print "Current position : " + robot.report().to_s + "\n"
puts " "

puts "Moving forward"
robot.move()

print "Current position : " + robot.report().to_s + "\n"
puts " "

puts "Turning left"
robot.left()

print "Current position : " + robot.report().to_s + "\n"
puts " "

puts "Turning left"
robot.left()

print "Current position : " + robot.report().to_s + "\n"
puts " "

puts "Moving forward"
robot.move()

print "Current position : " + robot.report().to_s + "\n"
puts " "
