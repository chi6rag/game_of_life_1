require "./lib/game_of_life.rb"
require "test/unit"

class GenerationTest < Test::Unit::TestCase
  def test_live_cells_for_generation_with_no_live_cells_returns_nil
    grid = GameOfLife::Grid.new(3,3)
    generation = GameOfLife::Generation.new(grid)
    assert_equal generation.live_cells, nil
  end

  def test_live_cells_for_generation_with_existent_live_cells_returns_live_cells
    grid = GameOfLife::Grid.new(3,3)
    live_cells = [
      GameOfLife::Cell.new(0,0),
      GameOfLife::Cell.new(0,1),
      GameOfLife::Cell.new(0,2)
    ]
    generation = GameOfLife::Generation.new(grid, live_cells)
    assert_equal generation.live_cells.count, 3
    assert_equal generation.live_cells.x_coordinate, 0
    assert_equal generation.live_cells.y_coordinate, 0
  end
end