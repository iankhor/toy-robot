require_relative './robot'

module INTERFACE

  def INTERFACE.menu(robot)

    exit = false

    while !exit
      puts "#" * 50
      puts "#" + " " * 15 + "TOY ROBOT CHALLENGE" + " " * 14 + "#"
      puts "#" * 50

      puts "Select an option"
      puts "\n"

      puts "1. PLACE"
      puts "2. MOVE"
      puts "3. LEFT"
      puts "4. RIGHT"
      puts "5. REPORT"
      puts "6. Show example A"
      puts "7. Show example B"
      puts "8. Show example C"

      puts "\n"
      puts "hit CTRL+C to exit"
      puts "\n"
      puts "#" * 50

      INTERFACE.evaluate_response(gets.chomp(),robot)
      puts "Press enter to continue"
      gets()

    end

  end

  private

  def INTERFACE.evaluate_response(response, robot)
    case response.to_s
      when '1' then puts INTERFACE.place_menu(robot)
      when '2' then robot.move()
      when '3' then robot.left()
      when '4' then robot.right()
      when '5' then puts "REPORT : " + robot.report().to_s
      when '6' then INTERFACE.example_a(robot)
      when '7' then INTERFACE.example_b(robot)
      when '8' then INTERFACE.example_c(robot)

    end
  end

  def INTERFACE.place_menu(robot)
    puts "Enter x coordinate"
    x = gets.chomp().to_i
    puts "Enter y coordinate"
    y = gets.chomp().to_i
    puts "Enter direction to face (NORTH, SOUTH, EAST, or WEST). Ensure all in upper case"
    direction = gets.chomp()

    robot.place(x,y,direction)
    puts "NEW POSITION : " + robot.report().to_s
  end

  def INTERFACE.example_a(robot)
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
  end

  def INTERFACE.example_b(robot)
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
  end

  def INTERFACE.example_c(robot)
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
  end


end
