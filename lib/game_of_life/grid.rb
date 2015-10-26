module GameOfLife
  class Grid
    def initialize(length, breadth)
      @length = length
      @breadth = breadth
    end

    def is_valid?
      return true if (@length.class == Fixnum && @breadth.class == Fixnum)
      return false
    end
  end
end