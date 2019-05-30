class Api::V1::GamesController < ApplicationController
    def index
        @games = Game.all
        render json: @games
    end

    def show
        user =  User.find(params[:id])
        render json: user
    end

    def create

      @game = Game.create(difficulty: params[:difficulty], high_score: 0,level: 0, score: params[:score], timer: 0, user_id: params[:user_id])

      if @game.score > @game.high_score
        @game.high_score = @game.score
        @game.save
      end

      render json: @game
    end

    def update
        user =  User.find(params[:id])
        render json: user
    end

    private

    def user_params
        # byebug
        params.require(:user).permit(:username)
    end

    def game_params
        params.require(:game).permit(:difficulty,:user_id)
    end
end
