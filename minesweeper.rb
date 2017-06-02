require_relative 'board'
require 'byebug'

class MineSweeper
  attr_reader :board

  def initialize
    @board = Board.new
  end

  def play
    until board.won?
      board.render
    end
  end

end
