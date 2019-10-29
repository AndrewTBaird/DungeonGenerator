class Dungeon
  def initialize(rows, cols)
    @rows = rows
    @columns = cols
    @wall_arr = Array.new(rows){Array.new(cols, 0)}
  end

  def draw
    drawing = ""

    @wall_arr.each do |row|
      drawing += "\n"
      row.each do |column|
        drawing += column.to_s
      end
    end

    drawing
  end

end
