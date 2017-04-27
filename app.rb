require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb(:players)
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    p params
    redirect to('/play')
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.attack
    erb(:attack) 
  end

  post '/switchturns' do
    @game = $game
    @game.switch_turns
    erb(:attack)
  end
  
run! if app_file == $0
end
