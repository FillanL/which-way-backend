class Api::V1::UsersController < ApplicationController

  def create
      @user = User.find_or_create_by(username:params[:username])

      # create_or_find_by
      # @game = Game.create(difficulty: params[:difficulty], high_score: 0,level: 0, score: 0, timer: 0, user_id: @user.id)

     render json: @user
  end

end
