require "spec_helper"
require "dungeon_generator"
require "dungeon"

describe DungeonGenerator do
  describe "#create_tunnel_at_current_location" do
    let(:dungeon) { Dungeon.new(5, 5, 4, 5) }
    let(:dungeon_generator) { DungeonGenerator.new(dungeon, [2, 2])}

    it "marks the current location as a tunnel" do
      dungeon_generator.create_tunnel_at_current_location
      expect(dungeon.dungeon_array[2][2]).to eq(" ")
    end
  end

  describe "#move_random_direction" do

    context "when max tunnel length is 1" do
      let(:dungeon) { Dungeon.new(2, 2, 1, 1) }
      let(:dungeon_generator) { DungeonGenerator.new(dungeon, [1, 1])}

      it "does not move outside the walls of the dungeon" do
        20.times do
          dungeon_generator.create_tunnel_randomly
          expect(dungeon_generator.current_position[0]).to be < 2
          expect(dungeon_generator.current_position[0]).to be > -1

          expect(dungeon_generator.current_position[1]).to be < 2
          expect(dungeon_generator.current_position[1]).to be > -1
        end
      end
    end

    context "when max tunnel length is > 1" do
      let(:dungeon) { Dungeon.new(20, 20, 5, 1) }
      let(:dungeon_generator) { DungeonGenerator.new(dungeon, [9, 9])}

      it "does not move outside the walls of the dungeon" do
        20.times do
          dungeon_generator.create_tunnel_randomly
          expect(dungeon_generator.current_position[0]).to be < 20
          expect(dungeon_generator.current_position[0]).to be > -1

          expect(dungeon_generator.current_position[1]).to be < 20
          expect(dungeon_generator.current_position[1]).to be > -1
        end
      end
    end
  end
end

