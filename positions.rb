class North
  def self.left
    West
  end

  def self.move(initial_position = nil)
    initial_position.increment_y
    puts "Moving #{initial_position}"
    initial_position
  end

  def self.right
    East
  end
end

class West
  def self.left
    South
  end

  def self.move(initial_position = nil)
    initial_position.increment_x
    puts "Moving #{initial_position}"
    initial_position
  end

  def self.right
    North
  end
end


class Position
  LIMIT_MAX = 5
  LIMIT_MIN = 0

  def initialize(x, y)
    @x, @y = x, y
  end

  def to_s
    "#{@x}, #{@y}"
  end

  def is_inside_limit? param
    param <= LIMIT_MAX && param >= LIMIT_MIN
  end

  def increment_x
    @x += 1 if is_inside_limit? (@x +1)
  end

  def increment_y
    @y += 1 if is_inside_limit? (@y +1)
  end

end
