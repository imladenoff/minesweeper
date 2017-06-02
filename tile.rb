class Tile
  attr_reader :face_up, :bomb

  def initialize(bomb)
    @bomb = bomb
    @face_up = false
    # @face_up = true #debug
  end

  def self.randomize
    bomb = rand(2) == 0
    # bomb = false #debug
    Tile.new(bomb)
  end

  def display
    if self.bomb
      "*"
    else
      " "
    end
  end

  def is_bomb?
  end

  # def neighbor_count(pos)
  #   x, y = pos
  #   count = 0
  #   (x-1..x+1).each do |hor|
  #     next unless hor.between?(0,8)
  #     (y-1..y+1).each do |vert|
  #       next unless vert.between?(0,8)
  #       count += 1 if board[[hor,vert]].bomb
  #     end
  #   end
  #   count
  # end

end
