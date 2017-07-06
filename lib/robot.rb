require 'constants'

class Robot

  def initialize(position_x, position_y, direction)
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
    current_position = report()
    current_direction = current_position[2]
    new_direction = direction(current_direction, "left")
    place( current_position[0], current_position[1], new_direction )
    report()
  end

  def right
    current_position = report()
    current_direction = current_position[2]
    new_direction = direction(current_direction, "right")
    place( current_position[0], current_position[1], new_direction )
    report()
  end

  def place_valid?(position_x, position_y)
    (position_x > TABLE_SIZE) || (position_y > TABLE_SIZE) ? false : true
  end

  private

  def direction(current_direction, turn)

    new_direction =
    case current_direction
      when 'NORTH' then turn == "left" ? 'WEST' : 'EAST'
      when 'EAST'  then turn == "left" ? 'NORTH': 'SOUTH'
      when 'SOUTH' then turn == "left" ? 'EAST' : 'WEST'
      when 'WEST'  then turn == "left" ? 'SOUTH': 'NORTH'
      else current_direction
    end

    new_direction
  end


end
