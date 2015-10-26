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
  end
end