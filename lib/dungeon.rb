class Dungeon
  def initialize(rows, cols)
    @rows = rows
    @columns = cols
    @wall_arr = Array.new(rows){Array.new(cols)}
  end

  def draw
    drawing = ""
    @wall_arr.each do |row|
      drawing += "\n"
      row.each do |column|
        drawing += '0'
      end
    end

    drawing
  end

end
