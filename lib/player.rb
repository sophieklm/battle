class Player

  DEFAULT_HP = 50
  attr_reader :name, :hp

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def attack(player)
    player.reduce_hp
  end

  def reduce_hp
    @hp -= 10
  end

end
