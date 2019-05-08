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
        @user = User.create(username:params[:username])
        
        # create_or_find_by
        @game = Game.create(difficulty: params[:difficulty], high_score: 0,level: 0, score: 0, timer: 0, user_id: @user.id)

       render json: @user
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
        params.require(:game).permit(:difficulty,:high_score,:level)
    end
end
