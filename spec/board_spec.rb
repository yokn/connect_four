# frozen_string_literal: true

require_relative '../lib/board'

# rubocop:disable Metrics/BlockLength
describe Board do
  context 'before the game starts' do
    subject(:board) { described_class.new }
    it 'creates the board correctly' do
      board_array = Array.new(6) { Array.new(7, '-') }
      expect(board.board).to eq(board_array)
    end
  end
  context 'while the game is not over' do
    context 'when adding a move to the board' do
      subject(:board) { described_class.new }
      before do
        expect(board).to receive(:player_input).and_return(1)
        board.get_move('W')
      end
      context 'the move is valid' do
        it 'adds the move to the board' do
          board_array = board.instance_variable_get(:@board)
          slot = board_array[1][0]
          expect(slot).to eq('W')
        end
        it 'displays the board correctly after a move' do
          expect(board).to receive(:to_s).and_return([['-', 'W', '-', '-', '-', '-'],
                                                      ['-', '-', '-', '-', '-', '-'],
                                                      ['-', '-', '-', '-', '-', '-'],
                                                      ['-', '-', '-', '-', '-', '-'],
                                                      ['-', '-', '-', '-', '-', '-'],
                                                      ['-', '-', '-', '-', '-', '-'],
                                                      ['-', '-', '-', '-', '-', '-']])
          board.to_s
        end
      end
      context 'the move is invalid' do
        it 'does not add the move to the board' do
          expect(board).to receive(:player_input).and_return(1).twice
          board.get_move('W')
          board_array = board.instance_variable_get(:@board)
          board.get_move('B')
          slot = board_array[1][0]
          expect(slot).to eq('W')
        end
      end
    end
  end
end
