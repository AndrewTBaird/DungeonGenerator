class DungeonGenerator
  attr_reader :current_position

  DIRECTIONS = [[1, 0], [-1, 0], [0, 1], [0, -1]]

  def initialize(dungeon, current_position)
    @dungeon = dungeon
    @current_position = current_position
  end

  def do number_of_tunnels
    create_tunnel_at_current_location

    number_of_tunnels.times do
      move_random_direction
      create_tunnel_at_current_location
    end
  end

  def move_random_direction
    direction = DIRECTIONS[rand(4)]

    until position_inside_walls?([direction[0] + @current_position[0], direction[1] + @current_position[1]])
      direction = DIRECTIONS[rand(4)]
    end

    @current_position = [@current_position[0] + direction[0], @current_position[1] + direction[1]]
  end

  def create_tunnel_at_current_location
    @dungeon.dungeon_array[@current_position[0]][@current_position[1]] = 1
  end


  private


  def position_inside_walls? position
    position[0] > -1 && position[0] < @dungeon.rows &&
    position[1] > -1 && position[1] < @dungeon.columns
  end
end
