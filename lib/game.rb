
class Game

  attr_reader :attackee

  def initialize(player1, player2)
    @players = [player1, player2]
    @attackee = @players[1]
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack
    @attackee.reduce_hp
  end

  def switch_turns
    @players.swap!(0,1) 
  end


end
