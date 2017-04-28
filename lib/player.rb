class Player

  DEFAULT_HP = 50
  attr_reader :name, :hp

  def initialize(name = :name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def reduce_hp
    @hp -= 10
  end

end
