# frozen_string_literal: true

class Game
  def initialize
    @board = Board.new
    @player1 = Player.new('⚪')
    @player2 = Player.new('⚫')
  end
end
