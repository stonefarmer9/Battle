require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
       erb :play, locals: {
       player_1: $player_1.name,
       player_2: $player_2.name,
    }
  end


  get '/attack' do
    erb :attack, locals: {
    player_1: $player_1.name,
    player_2: $player_2.name,
 }
  end

  run! if app_file == $0

end
