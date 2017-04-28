require_relative 'player'

class Game

  attr_reader :attackee, :player1, :player2

  def initialize(player1 = Player.new, player2 = Player.new)
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

  def game_over?
    loser.any?
  end

  def loser
    @players.select {|player| player.hp <= 10 }
  end

end
