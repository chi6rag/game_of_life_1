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
      next_generation_live_cells = @live_cells
      next_generation_live_cells.map do |cell|
        live_neighbour_count = cell.live_neighbours.count
        if live_neighbour_count.between? 2,3
          # cell lives
        else
          # cell dies
        end
      end
      Generation.new(@grid, next_generation_live_cells)
    end

  end
end