module GameOfLife
  class Grid
    def initialize(length, breadth, live_cells=nil)
      @length = length
      @breadth = breadth
      @live_cells = live_cells
    end

    def is_valid?
      return true if (@length.class == Fixnum && @breadth.class == Fixnum)
      return false
    end

    def live_cells
      @live_cells
    end
  end
end