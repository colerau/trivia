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

    post '/after_trivia_sheet' do 
        @team1score = (
            (params[:t1r1q1].to_i) + (params[:t1r1q2].to_i) + (params[:t1r1q3].to_i) + (params[:t1r1q4].to_i) + (params[:t1r2q1].to_i) + (params[:t1r2q2].to_i) + (params[:t1r2q3].to_i) + (params[:t1r2q4].to_i) + (params[:t1r3q1].to_i) + (params[:t1r3q2].to_i) + (params[:t1r3q3].to_i) + (params[:t1r3q4].to_i) + (params[:t1r4q1].to_i) + (params[:t1r4q2].to_i) + (params[:t1r4q3].to_i) + (params[:t1r4q4].to_i)
            )

        @team2score = (
            (params[:t2r1q1].to_i) + (params[:t2r1q2].to_i) + (params[:t2r1q3].to_i) + (params[:t2r1q4].to_i) + (params[:t2r2q1].to_i) + (params[:t2r2q2].to_i) + (params[:t2r2q3].to_i) + (params[:t2r2q4].to_i) + (params[:t2r3q1].to_i) + (params[:t2r3q2].to_i) + (params[:t2r3q3].to_i) + (params[:t2r3q4].to_i) + (params[:t2r4q1].to_i) + (params[:t2r4q2].to_i) + (params[:t2r4q3].to_i) + (params[:t2r4q4].to_i)
            )

        @team3score = (
            (params[:t3r1q1].to_i) + (params[:t3r1q2].to_i) + (params[:t3r1q3].to_i) + (params[:t3r1q4].to_i) + (params[:t3r2q1].to_i) + (params[:t3r2q2].to_i) + (params[:t3r2q3].to_i) + (params[:t3r2q4].to_i) + (params[:t3r3q1].to_i) + (params[:t3r3q2].to_i) + (params[:t3r3q3].to_i) + (params[:t3r3q4].to_i) + (params[:t3r4q1].to_i) + (params[:t3r4q2].to_i) + (params[:t3r4q3].to_i) + (params[:t3r4q4].to_i)
            )

        @team4score = (
            (params[:t4r1q1].to_i) + (params[:t4r1q2].to_i) + (params[:t4r1q3].to_i) + (params[:t4r1q4].to_i) + (params[:t4r2q1].to_i) + (params[:t4r2q2].to_i) + (params[:t4r2q3].to_i) + (params[:t4r2q4].to_i) + (params[:t4r3q1].to_i) + (params[:t4r3q2].to_i) + (params[:t4r3q3].to_i) + (params[:t4r3q4].to_i) + (params[:t4r4q1].to_i) + (params[:t4r4q2].to_i) + (params[:t4r4q3].to_i) + (params[:t4r4q4].to_i)
            )

        @team5score = (
            (params[:t5r1q1].to_i) + (params[:t5r1q2].to_i) + (params[:t5r1q3].to_i) + (params[:t5r1q4].to_i) + (params[:t5r2q1].to_i) + (params[:t5r2q2].to_i) + (params[:t5r2q3].to_i) + (params[:t5r2q4].to_i) + (params[:t5r3q1].to_i) + (params[:t5r3q2].to_i) + (params[:t5r3q3].to_i) + (params[:t5r3q4].to_i) + (params[:t5r4q1].to_i) + (params[:t5r4q2].to_i) + (params[:t5r4q3].to_i) + (params[:t5r4q4].to_i)
            )

        @team6score = (
            (params[:t6r1q1].to_i) + (params[:t6r1q2].to_i) + (params[:t6r1q3].to_i) + (params[:t6r1q4].to_i) + (params[:t6r2q1].to_i) + (params[:t6r2q2].to_i) + (params[:t6r2q3].to_i) + (params[:t6r2q4].to_i) + (params[:t6r3q1].to_i) + (params[:t6r3q2].to_i) + (params[:t6r3q3].to_i) + (params[:t6r3q4].to_i) + (params[:t6r4q1].to_i) + (params[:t6r4q2].to_i) + (params[:t6r4q3].to_i) + (params[:t6r4q4].to_i)
            )

        @team7score = (
            (params[:t7r1q1].to_i) + (params[:t7r1q2].to_i) + (params[:t7r1q3].to_i) + (params[:t7r1q4].to_i) + (params[:t7r2q1].to_i) + (params[:t7r2q2].to_i) + (params[:t7r2q3].to_i) + (params[:t7r2q4].to_i) + (params[:t7r3q1].to_i) + (params[:t7r3q2].to_i) + (params[:t7r3q3].to_i) + (params[:t7r3q4].to_i) + (params[:t7r4q1].to_i) + (params[:t7r4q2].to_i) + (params[:t7r4q3].to_i) + (params[:t7r4q4].to_i)
            )

        @team8score = (
            (params[:t8r1q1].to_i) + (params[:t8r1q2].to_i) + (params[:t8r1q3].to_i) + (params[:t8r1q4].to_i) + (params[:t8r2q1].to_i) + (params[:t8r2q2].to_i) + (params[:t8r2q3].to_i) + (params[:t8r2q4].to_i) + (params[:t8r3q1].to_i) + (params[:t8r3q2].to_i) + (params[:t8r3q3].to_i) + (params[:t8r3q4].to_i) + (params[:t8r4q1].to_i) + (params[:t8r4q2].to_i) + (params[:t8r4q3].to_i) + (params[:t8r4q4].to_i)
            )

        @team9score = (
            (params[:t9r1q1].to_i) + (params[:t9r1q2].to_i) + (params[:t9r1q3].to_i) + (params[:t9r1q4].to_i) + (params[:t9r2q1].to_i) + (params[:t9r2q2].to_i) + (params[:t9r2q3].to_i) + (params[:t9r2q4].to_i) + (params[:t9r3q1].to_i) + (params[:t9r3q2].to_i) + (params[:t9r3q3].to_i) + (params[:t9r3q4].to_i) + (params[:t9r4q1].to_i) + (params[:t9r4q2].to_i) + (params[:t9r4q3].to_i) + (params[:t9r4q4].to_i)
            )

        @team10score = (
            (params[:t10r1q1].to_i) + (params[:t10r1q2].to_i) + (params[:t10r1q3].to_i) + (params[:t10r1q4].to_i) + (params[:t10r2q1].to_i) + (params[:t10r2q2].to_i) + (params[:t10r2q3].to_i) + (params[:t10r2q4].to_i) + (params[:t10r3q1].to_i) + (params[:t10r3q2].to_i) + (params[:t10r3q3].to_i) + (params[:t10r3q4].to_i) + (params[:t10r4q1].to_i) + (params[:t10r4q2].to_i) + (params[:t10r4q3].to_i) + (params[:t10r4q4].to_i)
            )

        @hash = {t1: @team1score, t2: @team2score, t3: @team3score, t4: @team4score, t5: @team5score, t6: @team6score, t7: @team7score, t8: @team8score, t9: @team9score, t10: @team10score}

        binding.pry
        erb :"/application/winner"
    end

end