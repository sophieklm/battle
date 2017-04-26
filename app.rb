require 'sinatra/base'
class Battle < Sinatra::Base

get '/' do
  'Testing infrastructure working!'
end

get '/' do
  erb(:players)
end

post '/players' do
 @player1 = params[:name]
  p params
  erb(:players)
end

run! if app_file == $0
end
