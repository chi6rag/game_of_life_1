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
      if @live_cells
        next_generation_live_cells = @live_cells.dup
        next_generation_live_cells.each do |cell|
          live_neighbour_count = (live_neighbours_for cell).count
          if live_neighbour_count.between? 2,3
            # cell lives
          else
            # cell dies
            next_generation_live_cells.delete cell
          end
        end
        Generation.new(@grid, next_generation_live_cells)
      else
        Generation.new(@grid)
      end
    end

    private

    def live_neighbours_for cell
      live_neighbours = []
      remaining_cells = @live_cells.reject do |c|
        c.x_coordinate == cell.x_coordinate &&
        c.y_coordinate == cell.y_coordinate
      end
      x_coordinate = cell.x_coordinate
      y_coordinate = cell.y_coordinate

      remaining_cells.each do |remaining_cell|
        live_neighbours << remaining_cell if remaining_cell
        .is_neighbour? cell
      end
      live_neighbours
    end

  end
end