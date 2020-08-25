# frozen_string_literal: true

require_relative 'board'
require_relative 'player'

class Game
  attr_reader :current_player
  def initialize
    @board = Board.new
    @player1 = Player.new('W')
    @player2 = Player.new('B')
  end

  def change_current_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def play_game
    # until game_over?
    change_current_player
    @board.get_move(@current_player.piece)
    @board.to_s
    # end
  end

  def game_over?
    if @board.check_win
      display_winner
      true
    else
      false
    end
  end

  def display_winner
    puts 'placeholder won!'
  end
end
