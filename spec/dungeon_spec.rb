require "spec_helper"
require "dungeon"

describe Dungeon do
  describe "#draw_dungeon" do
    let(:dungeon) { Dungeon.new(3, 2, 2, 1) }
    it { expect(dungeon.draw).to eq("\nXX\nXX\nXX") }
  end
end

