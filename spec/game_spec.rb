# frozen_string_literal: true

require_relative '../lib/game'

describe Game do
  context 'while the game is not over' do
    subject(:game) { described_class.new }
    let(:expected_player1) { game.instance_variable_get(:@player1) }
    let(:expected_player2) { game.instance_variable_get(:@player2) }
    let(:current_player) { game.instance_variable_get(:@current_player) }
    it 'sets the current player' do
      expect(current_player).to equal(expected_player1)
    end
    it 'changes the current player' do
      game.change_current_player
      expect(current_player).to equal(expected_player2)
    end
  end
end
