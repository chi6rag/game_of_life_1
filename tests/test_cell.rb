require "./lib/game_of_life.rb"
require "test/unit"

class CellTest < Test::Unit::TestCase
  def test_new_with_valid_coordinates_creates_a_new_cell
    cell = GameOfLife::Cell.new(3,3, true)
    assert_equal cell.class, GameOfLife::Cell
    assert_true cell.is_valid?
  end

  def test_new_with_invalid_coordinates_raises_error
  end

  def test_is_neighbour_for_neighbouring_cell_returns_true
    cell = GameOfLife::Cell.new(0,0, true)
    neighbouring_cell = GameOfLife::Cell.new(1,0, true)
    assert_true cell.is_neighbour? neighbouring_cell
  end

  def test_is_neighbour_for_non_neighbouring_cell_returns_true
    cell = GameOfLife::Cell.new(0,0, true)
    neighbouring_cell = GameOfLife::Cell.new(2,2, true)
    assert_false cell.is_neighbour? neighbouring_cell
  end
end