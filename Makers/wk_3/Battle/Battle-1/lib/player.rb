class Player
  
  attr_reader :name, :hp
#  attr_accessor :hp

  DEFAULT_HP = 60
  
  def initialize(name, hp=DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def attack(player)
    player.receive_attack
  end

  def receive_attack
    @hp -= 10
  end
end