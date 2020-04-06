require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  describe '#attack' do
    it 'damages the oponent' do
      expect(player_2).to receive(:receive_attack)
      game.attack(player_2)
    end
  end

  describe '#player_1' do
    it 'returns player_1' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'returns player_2' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#turn' do
  it 'displays Player_1s turn at start of game' do
    expect(game.turn).to eq player_1
  end
end
  
end
