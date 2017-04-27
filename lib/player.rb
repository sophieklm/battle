class Player

  attr_reader :name, :hp

  def initialize(name, hp = 50)
    @name = name
    @hp = hp
  end
  
end
