class DungeonNavigation
  DIRECTIONS = {up: [1, 0], down: [-1, 0], left: [0, -1], right:[0, 1]}.freeze

  class << self
    def up
      DIRECTIONS[:up]
    end

    def down
      DIRECTIONS[:down]
    end

    def left
      DIRECTIONS[:left]
    end

    def right
      DIRECTIONS[:right]
    end
  end
end
