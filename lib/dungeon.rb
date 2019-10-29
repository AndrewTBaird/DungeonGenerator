require "dungeon_navigation"

class Dungeon
  def initialize(rows, cols)
    @rows = rows
    @columns = cols
    @dungeon_array = Array.new(rows){Array.new(cols, 0)}
    @max_tunnel_length = 5
    @max_turns = 5
  end

  def draw
    drawing = ""

    @dungeon_array.each do |row|
      drawing += "\n"
      row.each do |column|
        drawing += column.to_s
      end
    end

    drawing
  end

  def generate_dungeon
    current_row = rand(@rows)
    current_column = rand(@columns)
    @dungeon_array[current_row][current_column] = 1

    # current_row += DungeonNavigation.up[0]
    # current_column += DungeonNavigation.up[1]
    # @dungeon_array[current_row][current_column] = 1

  end

end
