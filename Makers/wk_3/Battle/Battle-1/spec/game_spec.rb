require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:dave) { double :player }
  let(:mittens) { double :player }
  describe '#attack' do
  it 'damages the oponent' do
    expect(mittens).to receive(:receive_attack)
    game.attack(mittens)
  end
end
  
end