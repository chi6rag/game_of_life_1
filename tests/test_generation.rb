require "./lib/game_of_life.rb"
require "test/unit"

class GenerationTest < Test::Unit::TestCase
  def test_new_with_valid_grid_returns_new_generation_with_no_live_cells
    grid = GameOfLife::Grid.new(3,3)
    generation = GameOfLife::Generation.new(grid)
    assert_equals generation.live_cells, 0
  end
end