# require 'constants'

class Robot

  def initialize(position_x = 0 , position_y = 0 , direction = "NORTH")
    @position_x = position_x
    @position_y = position_y
    @direction = direction
  end

  def place(new_position_x, new_position_y, new_direction)
    @position_x = new_position_x
    @position_y = new_position_y
    @direction = new_direction
    report()
  end

  def report
    [ @position_x , @position_y , @direction ]
  end

  def move
    case @direction
      when 'NORTH'  then place( @position_x + 1 , @position_y , @direction )
      when 'SOUTH'  then place( @position_x - 1 , @position_y , @direction )
      when 'EAST'   then place( @position_x , @position_y + 1 , @direction )
      when 'WEST'   then place( @position_x , @position_y - 1 , @direction )
      else place( @position_x , @position_y , @direction )
    end
    report()
  end

  def left
    turn("left")
  end

  def right
    turn("right")
  end

  def place_valid?(position_x, position_y)
    (position_x > TABLE_SIZE) || (position_y > TABLE_SIZE) ? false : true
  end

  private

  def turn(direction)

    new_direction =
    case report()[2]
      when 'NORTH' then direction == "left" ? 'WEST' : 'EAST'
      when 'EAST'  then direction == "left" ? 'NORTH': 'SOUTH'
      when 'SOUTH' then direction == "left" ? 'EAST' : 'WEST'
      when 'WEST'  then direction == "left" ? 'SOUTH': 'NORTH'
      else report()[2]
    end

    place( report()[0], report()[1], new_direction )
    report()
  end


end
