# frozen_string_literal: true

require_relative 'game'

# INITIAL PLAN:
# Game creates Board with 7x6 grid
# Game creates two Players with two different pieces ⚪⚫
# While the game is not over:
#   Game sets the current player
#   Board keeps asking current player for a move until it receives a valid move
#   Board adds the move the board
#   Game displays the board using board's #to_s method
#   Game#game_over? asks Board to check_win?
#   If #game_over? Game displays the winner's name or declares that it is a tie

# Game.new.play_game

# TODO: Fix board dimensions(6x7 to 7x6)
# TODO: Use doubles to fix Game's tests
