require "./lib/game_of_life.rb"
require "test/unit"

class GridTest < Test::Unit::TestCase
  def test_new_with_valid_size_creates_a_new_grid
    grid = GameOfLife::Grid.new(3,3)
    assert_equal grid.class, GameOfLife::Grid
    assert_true grid.is_valid?
  end

  def test_new_with_invalid_size_raises_error
  end

  def test_live_cells_for_grid_with_no_live_cells_returns_nil
    grid = GameOfLife::Grid.new(3,3)
    assert_equal grid.live_cells, nil
  end
end