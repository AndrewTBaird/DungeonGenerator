class DungeonGenerator
  attr_reader :current_position

  DIRECTIONS = [[1, 0], [-1, 0], [0, 1], [0, -1]]

  def initialize(dungeon, current_position)
    @dungeon = dungeon
    @current_position = current_position
  end

  def do
    create_tunnel_at_current_location

    @dungeon.number_of_tunnels.times do
      create_tunnel_randomly
    end
  end

  def create_tunnel_randomly
    tunnel_length = rand(@dungeon.max_tunnel_length + 1)
    direction = DIRECTIONS[rand(4)]

    until position_inside_walls?([direction[0] * tunnel_length + @current_position[0], direction[1] * tunnel_length + @current_position[1]])
      direction = DIRECTIONS[rand(4)]
    end

    tunnel_length.times do
      @current_position = [@current_position[0] + direction[0], @current_position[1] + direction[1]]
      create_tunnel_at_current_location
    end
  end

  def create_tunnel_at_current_location
    @dungeon.dungeon_array[@current_position[0]][@current_position[1]] = " "
  end


  private


  def position_inside_walls? position
    position[0] > -1 && position[0] < @dungeon.rows &&
    position[1] > -1 && position[1] < @dungeon.columns
  end
end
