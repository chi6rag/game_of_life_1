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
end