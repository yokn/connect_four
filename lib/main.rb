# frozen_string_literal: true

# INITIAL PLAN:
# Game creates Board with 7x6 grid
# Game creates two Players with two different pieces ⚪⚫
# Game asks the user which piece they would like to go first⚪ or second⚫
# While the game is not over:
#   Game sets the current player
#   Board keeps asking current player for a move until it receives a valid move
#   Board adds the move the board
#   Game displays the board using board's #to_s method
#   Game#game_over? asks Board to check_win?
#   If #game_over? Game displays the winner's name or declares that it is a tie

# Game.new.start_game
