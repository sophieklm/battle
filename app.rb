require 'sinatra/base'
class Battle < Sinatra::Base

get '/' do
  'Testing infrastructure working!'
end

get '/players' do
  erb(:players)
  @player1 = params[:name]
end

run! if app_file == $0
end
