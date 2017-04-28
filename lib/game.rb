class Game

  attr_reader :attackee, :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [player1, player2]
    @attackee = @players[1]
  end

  def attack
    @attackee.reduce_hp
  end

  def switch_turns
    @players[0], @players[1] = @players[1], @players[0]
    @attackee = @players[1]
  end
end
