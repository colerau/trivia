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

    post '/after_start' do 
        binding.pry
        @team1name = params[:team1name]
        @team2name = params[:team2name]
        @team3name = params[:team3name]
        @team4name = params[:team4name]
        @team5name = params[:team5name]
        @team6name = params[:team6name]
        @team7name = params[:team7name]
        @team8name = params[:team8name]
        @team9name = params[:team9name]
        @team10name = params[:team10name]

        erb :"/application/trivia_sheet"
    end

    get '/after_trivia_sheet' do 
        binding.pry
    end
end