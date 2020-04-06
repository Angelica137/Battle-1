require 'game'

describe Game do
  describe '#attack' do
  it 'damages the oponent' do
    game = Game.new
    dave = Player.new('Dave')
    mittens = Player.new('Mittens')
    expect(mittens).to receive(:receive_attack)
    dave.attack(mittens)
  end
end
  
end