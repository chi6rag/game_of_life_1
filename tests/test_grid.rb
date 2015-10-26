require "./lib/game_of_life.rb"
require "test/unit"

class GridTest < Test::Unit::TestCase
  def test_grid_with_valid_size_creates_a_new_grid
    grid = GameOfLife::Grid.new(3,3)
    assert_equal grid.class, GameOfLife::Grid
    assert_true grid.is_valid?
  end
end