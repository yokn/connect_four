# frozen_string_literal: true

require_relative '../lib/game'

# rubocop:disable Metrics/BlockLength
describe Game do
  context 'while the game is not over' do
    subject(:game) { described_class.new }
    let(:expected_player1) { game.instance_variable_get(:@player1) }
    let(:expected_player2) { game.instance_variable_get(:@player2) }
    let(:current_player) { game.instance_variable_get(:@current_player) }
    let(:board) { game.instance_variable_get(:@board) }

    it 'changes the current player to player1' do
      game.change_current_player
      expect(current_player).to equal(expected_player1)
    end
    it 'changes the current player to player2' do
      game.change_current_player
      game.change_current_player
      expect(current_player).to equal(expected_player2)
    end
    it 'tells the board to ask the user for a move' do
      expect(board).to receive(:get_move)
      game.play_game
    end
    it 'tells the board to display the board' do
      expect(board).to receive(:to_s)
      game.play_game
    end
    it 'tells the board to check if there is a win' do
      expect(board).to receive(:check_win)
      game.play_game
    end
  end
end
