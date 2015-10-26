module GameOfLife
  class Generation
    def initialize(grid, live_cells=nil)
      @grid = grid
      @live_cells = live_cells
    end

    def live_cells
      @live_cells
    end

    def next
      Generation.new(@grid)
    end

  end
end