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

  def test_new__with_invalid_cell_coordinates_raises_error
  end

  def test_live_cells_for_grid_with_no_live_cells_returns_nil
    grid = GameOfLife::Grid.new(3,3)
    assert_equal grid.live_cells, nil
  end

  def test_live_cells_for_grid_with_existent_live_cells_returns_live_cells
    live_cells = [
      GameOfLife::Cell.new(0, 0, true),
      GameOfLife::Cell.new(1, 0, true),
      GameOfLife::Cell.new(2, 0, true)
    ]
    grid = GameOfLife::Grid.new(3,3, live_cells)
    assert_equal grid.live_cells.class, Array
    assert_equal grid.live_cells.count, 3
  end
end