# frozen_string_literal: true

class Board
  attr_reader :board
  def initialize(board = Array.new(6) { Array.new(7, '-') })
    @board = board
  end

  def get_move(piece)
    # p 'getting move'
    row = player_input
    column = calculate_column(row)
    if valid_move?(row, column)
      add_move(row, column, piece)
    else
      puts 'Invalid slot. Try again.'
      get_move(piece)
    end
  end

  def to_s
    @board.transpose.reverse.each_with_index do |row, _index|
      row.each_with_index do |column, index|
        print column
        print ' '
        puts '' if index == 5
      end
    end
  end

  # def check_win
  #   false
  # end

  private

  def player_input
    p 'Which row to drop the piece? (0-6 for now)'
    gets.chomp.to_i
  end

  def valid_move?(row, column)
    # p row
    # p column
    @board[row][column] == '-'
  end

  def add_move(row, column, piece)
    # p 'adding'
    @board[row][column] = piece
    # p 'added'
  end

  def calculate_column(row)
    @board[row].each_with_index do |column, index|
      return index if column == '-'
    end
    # p 'column is full'
    99 # return an invalid integer to avoid returning a string and causing a mess
  end
end
