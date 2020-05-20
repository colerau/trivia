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

end