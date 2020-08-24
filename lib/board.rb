# frozen_string_literal: true

class Board
  attr_reader :board
  def initialize(board = Array.new(6) { Array.new(7, '-') })
    @board = board
  end

  def get_move(piece)
    row = player_input
    column = calculate_column(row)
    if valid_move?(row, column)
      add_move(row, column, piece)
    else
      get_move
    end
  end

  private

  def player_input
    p 'Which row to drop the piece? (1-7)'
    gets.chomp.to_i
  end

  def valid_move?(row, column)
    @board[row][column] == '-'
  end

  def add_move(row, column, piece)
    @board[row][column] = piece
  end

  def calculate_column(row)
    @board[row].each_with_index do |column, index|
      return index if column == '-'
    end
  end
end
