require 'sinatra/base'

class Dbserver < Sinatra::Base

  enable :sessions


  get '/' do
    'Hello dbserver!'
  end

  get '/set' do
  session[:cartoon] = params[:cartoon]
  p session
  "You've chosen " + params[:cartoon]

  end

  get '/get' do
    "Here's you're saved cartoon: " + session[:cartoon]
  end

  # start the server if ruby file executed directly
  set :port, 4000
  run! if app_file == $0
end
