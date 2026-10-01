module Api
  module V1
    class UsersController < ApplicationController
    def create_user
      user = User.new(users_params)

      if user.save
        render json: UserSerializer.new(user), status: :created
      else
        render json: { errors: user.errors }, status: :unprocessable_entity
      end

    end

    private
    def users_params
      params.require(:user).permit(:name, :email, :password)
    end
  end
    end end