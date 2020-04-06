require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:dave) { double :player }
  let(:mittens) { double :player }
  describe '#attack' do
  it 'damages the oponent' do
    expect(mittens).to receive(:receive_attack)
    game.attack(mittens)
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

end
  
end