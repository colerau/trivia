# WHY ONLY ONE DOT?!
require "./config/environment"

class ApplicationController < Sinatra::Base

    set :views, proc { File.join(root, '../views/') }
    register Sinatra::Twitter::Bootstrap::Assets
    
    configure do 
        set :public_folder, 'public'
        set :views, 'app/views'
        enable :sessions
        # I am unclear if I need session secret or if I'm even coding it correctly 
        set :session_secret, "5hf93ndms0cbdh4"
    end

    get '/' do
      erb :"/application/home"
    end

    get '/start' do 
        erb :"/application/start"
    end

    post '/start' do 
        binding.pry
        @num_teams = params[:num_teams]
        @num_qs = params[:num_qs]
        @num_rounds = params[:num_rounds]

        erb :"/application/more_qs"
    end

    post '/more_qs' do 
        binding.pry
    end
end