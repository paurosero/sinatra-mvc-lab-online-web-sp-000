require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
    erb :user_input
  end
  
  post '/' do
    @piglatinized_word = Piglatinizer.new(params[:user_phrase])
    
  end 

end