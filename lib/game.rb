# frozen_string_literal: true

require_relative 'board'
require_relative 'player'

class Game
  def initialize
    @board = Board.new
    @player1 = Player.new('⚪')
    @player2 = Player.new('⚫')
    @current_player = @player1
  end

  def change_current_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end
end
