class Navigator
  def initialize(face, direction)
    @face, @direction = face, direction
  end

  def coordinates
    ["NORTH", "WEST", "SOUTH", "EAST"]
  end

  def get_direction
    index_array = coordinates.find_index(@face)
    if direction == "RIGHT"
      index_array = 3 if index_array == 0
      coordinates[index_array + 1]
    else
      index_array = 0 if index_array == 3
      coordinates[index_array - 1]
    end
  end
end
