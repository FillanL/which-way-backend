class Api::V1::GamesController < ApplicationController
    def index 
        @games = Game.all 
        render json: @games
    end
end
