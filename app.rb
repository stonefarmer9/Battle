require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
       erb :play, locals: {
       player_1: session[:player_1_name],
       player_2: session[:player_2_name],
    }
  end


  get '/attack' do
    erb :attack, locals: {
    player_1: session[:player_1_name],
    player_2: session[:player_2_name],
 }
  end

  run! if app_file == $0

end
