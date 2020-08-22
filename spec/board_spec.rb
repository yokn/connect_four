# frozen_string_literal: true

require_relative '../lib/board'

describe Board do
  context 'before the game starts' do
    subject(:board) { described_class.new }
    it 'creates the board correctly' do
      board_array = Array.new(6) { Array.new(7, '-') }
      expect(board.board).to eq(board_array)
    end
  end
end
