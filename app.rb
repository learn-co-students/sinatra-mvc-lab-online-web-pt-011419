require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do 
        erb :"user_input"
    end

    post '/piglatinize' do 
        @p = PigLatinizer.new
        @user_phrase = params[:user_phrase]
        erb :"piglatanize_input"
    end
end