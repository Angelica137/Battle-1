require_relative 'player.rb'

class Game
  def attack(player)
    player.receive_attack
  end
end