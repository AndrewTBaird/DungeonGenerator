require "spec_helper"
require "dungeon"

describe Dungeon do

  describe "#draw_dungeon" do
    dungeon = Dungeon.new(3, 2)
    it { expect(dungeon.draw).to eq("\n00\n00\n00") }
  end

  describe "#generate_dungeon" do
    let(:dungeon) { Dungeon.new(5, 5) }

    it "generates a random dungeon" do
      dungeon.generate_dungeon
      puts dungeon.draw
    end
  end
end

