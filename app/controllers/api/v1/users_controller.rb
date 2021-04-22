class Api::V1::UsersController < ApplicationController
    
    def create
        user = User.new(user_params)
        if user.save
            render json: user
        else
            render json: {error: "User information was not saved."}
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :email)
    end
end
