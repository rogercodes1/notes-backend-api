class Api::V1::UsersController < ApplicationController

    def index
      #code
      @users = User.all

      render json: @users
    end
    def create
        @user = User.new(get_params)
        @user.save
      #code
    end
    def show
        @user = User.find(params[:id])
        render json: @user
      #code
    end

    private

    def get_params
        params.require(:user).permit(:first_name, :last_name)
    end
end
