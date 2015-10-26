module GameOfLife
  class Cli
    def start
      puts "Initial Configuration"
      print "Enter the size of grid: "
      grid_size = gets.chomp.to_i
      
    end
  end
end

0 0 0
0 1 0
0 0 0

0 0 0 
0 0 0
0 0 0 

---

000
111
000