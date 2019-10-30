require './dungeon_generator'

class Dungeon
  attr_reader :rows, :columns, :max_tunnel_length, :number_of_tunnels

  attr_accessor :dungeon_array

  def initialize(rows, cols, max_tunnel_length, number_of_tunnels)
    @rows = rows
    @columns = cols
    @dungeon_array = Array.new(rows){Array.new(cols, "X")}
    @max_tunnel_length = max_tunnel_length
    @number_of_tunnels = number_of_tunnels
    @creatures = []
  end

  def generate_tunnels
    DungeonGenerator.new(self, [0, 0]).do
  end

  def add_creature creature
    @creatures << creature
  end

  def draw
    drawing = ""

    @creatures.each do |creature|
      @dungeon_array[creature.position[0]][creature.position[1]] = "i"
    end

    @dungeon_array.each do |row|
      drawing += "\n"
      row.each do |column|
        drawing += column.to_s
      end
    end

    drawing
  end
end
