# frozen_string_literal: true

class Board
  attr_reader :board
  def initialize(board = Array.new(6) { Array.new(7, '-') })
    @board = board
  end
end
