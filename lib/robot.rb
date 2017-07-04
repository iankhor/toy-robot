class Robot

  def report
    [0,1,"EAST"]
  end

  def move
    [0,2,"NORTH"]
  end

  def left
    current_position = report()
    current_direction = current_position[2]

    new_direction = case current_direction
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

end
