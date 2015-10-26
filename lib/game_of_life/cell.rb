module GameOfLife
  class Cell
    attr_reader :x_coordinate, :y_coordinate

    def initialize(x_coordinate, y_coordinate, is_alive)
      @x_coordinate = x_coordinate
      @y_coordinate = y_coordinate
      @is_alive = is_alive
    end

    def is_valid?
      return true if (
                      @x_coordinate.class == Fixnum &&
                      @y_coordinate.class == Fixnum
                     )
      return false
    end

    def is_neighbour? cell
      (cell.x_coordinate - self.x_coordinate).between?(-1, 1) &&
      (cell.y_coordinate - self.y_coordinate).between?(-1, 1)
    end

  end
end