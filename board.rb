require_relative 'tile'
require 'byebug'

class Board
  attr_reader

  def initialize
    @grid = Array.new(9) { Array.new(9) {Tile.randomize} }
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
    puts "  #{(0..8).to_a.join(' ')}"
    i = 0
    @grid.each do |row|
      puts "#{i} #{row.map { |cell| cell.display }.join(' ')}"
      i += 1
    end
  end

  def won?
    @grid.each do |row|
      row.each do |cell|
        return false unless cell.face_up || cell.bomb
      end
    end
    true
  end

  def neighbor_count(pos)
    x, y = pos
    count = 0
    (x-1..x+1).each do |hor|
      next unless hor.between?(0,8)
      (y-1..y+1).each do |vert|
        next unless vert.between?(0,8)
        count += 1 if self[[hor,vert]].bomb
      end
    end
    count
  end

end
