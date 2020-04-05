require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Testing infrastructure working!'
    #on landing the users should be able
    #to input their names
  end

  run! if app_file == $0
end