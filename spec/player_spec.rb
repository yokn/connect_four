# frozen_string_literal: true

require_relative '../lib/player'

describe Player do
  context 'before the game starts' do
    let(:player1) { described_class.new('⚪') }
    let(:player2) { described_class.new('⚫') }
    it 'creates player1 correctly' do
      player1_piece = '⚪'
      expect(player1.piece).to eq(player1_piece)
    end
    it 'creates player2 correctly' do
      player2_piece = '⚫'
      expect(player2.piece).to eq(player2_piece)
    end
  end
end
