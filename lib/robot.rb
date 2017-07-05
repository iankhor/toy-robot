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
    [@position_x , @position_y , @direction]
  end

  def move
    [@position_x , @position_y + 1 , @direction]
  end

  def left
    current_position = report()
    current_direction = current_position[2]

    new_direction =
    case current_direction
      when 'NORTH' then 'WEST'
      when 'EAST'  then 'NORTH'
      when 'SOUTH' then 'EAST'
      when 'WEST'  then 'SOUTH'
      else current_direction
    end

    [
      current_position[0],
      current_position[1],
      new_direction
    ]
  end

  def right
    current_position = report()
    current_direction = current_position[2]

    new_direction =
    case current_direction
      when 'NORTH' then 'EAST'
      when 'EAST'  then 'SOUTH'
      when 'SOUTH' then 'WEST'
      when 'WEST'  then 'NORTH'
      else current_direction
    end

    [
      current_position[0],
      current_position[1],
      new_direction
    ]
  end

end
