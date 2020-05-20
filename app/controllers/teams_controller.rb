class TeamsController < ApplicationController
    get '/teams' do 
        @teams = Team.all
    end

    get '/teams/new' do 
        erb :'/teams/new'
    end

    post '/teams' do 
        binding.pry
        @team = params[:team_name]
        erb :'/teams/show'
    end

    get '/teams/:id'

end