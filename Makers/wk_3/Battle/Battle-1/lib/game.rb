require_relative 'player.rb'

class Game
  attr_reader :player_1, :player_2, :turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @players = [player_1, player_2]
    @turn = player_1
  end

  def attack(player)
    player.receive_attack
  end

  def switch_turns
    @turn = opponent_of(turn)
  end

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end

end