class Dungeon
  attr_reader :rows, :columns, :max_tunnel_length

  attr_accessor :dungeon_array

  def initialize(rows, cols, max_tunnel_length = 5)
    @rows = rows
    @columns = cols
    @dungeon_array = Array.new(rows){Array.new(cols, 0)}
    @max_tunnel_length = max_tunnel_length
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
end
