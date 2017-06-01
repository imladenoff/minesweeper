require 'byebug'

class Board

  def initialize
    @grid = Array.new(9) { Array.new(9) }
  end

  def [](pos)
    x, y = pos
    @grid[x][y]
  end

  def []=(pos, val)
    x, y = pos
    @grid[x][y] = val
  end

  def render
    puts "  #{(0..9).to_a.join(' ')}"
    i = 0
    @grid.each do |row|
      puts "#{i} #{row.join(' ')}"
      i += 1
    end
  end

end
