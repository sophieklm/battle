require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base

enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    @game = Game.create(player1, player2)
    redirect to('/play')
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @game.attack
    erb(:attack)
  end

  post '/attack' do
    if @game.game_over?
      redirect '/game_over'
    else
      redirect '/attack'
    end
  end

  post '/switchturns' do
    @game.switch_turns
    erb(:attack)
  end

  get '/game_over' do
    erb(:game_over)
  end

run! if app_file == $0
set :session_secret, 'secret'

end
