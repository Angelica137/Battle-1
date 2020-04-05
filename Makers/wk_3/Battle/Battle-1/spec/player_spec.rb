require 'player'

describe Player do
  subject(:dave) { Player.new('Dave') }
  subject(:mittens) { Player.new('Mittens') }

  describe '#name' do
    it 'returns the name' do
      expect(dave.name).to eq 'Dave'
    end
  end

  describe '#hit_points' do
    it 'returns the players HP' do
      expect(dave.hp).to eq Player::DEFAULT_HP
    end
  end

  describe '#attack' do
    it 'damages the oponent' do
      expect(mittens).to receive(:receive_attack)
      dave.attack(mittens)
    end
  end

  describe '#receive_attack' do
    it 'reduces the player hp' do
      expect { dave.receive_attack }.to change { dave.hp }.by(-10)
    end
  end

end