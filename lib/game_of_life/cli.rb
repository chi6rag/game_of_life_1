module GameOfLife
  class Cli
    def start
      puts "Initial Configuration"
      print "\nEnter the length of grid: "
      grid_length = gets.chomp.to_i
      print "\nEnter the breadth of grid: "
      grid_breadth = gets.chomp.to_i
      grid = Grid.new(grid_length, grid_breadth)
      generation = nil;

      puts "\nDoes the first generation have live cells (t/f): "
      live_cells_present = gets.chomp

      if live_cells_present == "t"
        live_cells = []
        (grid_length * grid_breadth).times do
          puts "\nEnter the x coordinate: "
          x_coordinate = gets.chomp.to_i
          puts "\nEnter the y coordinate: "
          y_coordinate = gets.chomp.to_i
          live_cells << Cell.new(x_coordinate, y_coordinate, true)
        end
        generation = Generation.new(grid, live_cells.uniq)
      else
        generation = Generation.new(grid)
      end

      while true
        puts '1. See next state'
        puts '2. Exit'
        print "\nChoice: "
        choice = gets.chomp.to_i
        case choice
        when 1
          generation = generation.next
          # print generation
        when 2
          System.exit(0)
        end
      end

    end
  end
end