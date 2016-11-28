require 'sinatra/base'

class Dbserver < Sinatra::Base
  get '/' do
    'Hello dbserver!'
  end

  # start the server if ruby file executed directly
  set :port, 4000
  run! if app_file == $0
end
