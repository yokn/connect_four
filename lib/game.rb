# frozen_string_literal: true

require_relative 'board'
require_relative 'player'

class Game
  attr_reader :current_player
  def initialize
    @board = Board.new
    @player1 = Player.new('⚪')
    @player2 = Player.new('⚫')
  end

  def change_current_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def play_game
    # until game_over?
    change_current_player
    @board.get_move(@current_player.piece)
    # end
  end
end
