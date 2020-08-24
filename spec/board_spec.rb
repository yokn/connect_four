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
  context 'while the game is not over' do
    # before do
    #   allow(board.get_move).to receive(gets)
    # end
    subject(:board) { described_class.new }
    it 'asks the user for a move' do
      expect(board).to receive(:player_input).and_return(1)
      board.get_move('test')
    end
    context 'when adding a move to the board' do
      context 'the move is valid' do
        it 'adds the move to the board' do
        end
      end
      context 'the move is invalid' do
        it 'does not add the move to the board' do
        end
      end
    end
  end
end
