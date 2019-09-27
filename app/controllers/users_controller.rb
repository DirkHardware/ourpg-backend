class UsersController < ApplicationController

    def index 
        users = User.all 
        render json: users
    end 

    def show 
        user = User.find_by username: (params[:username])
        render json: user 
    end 

    # def create
    #     user = User.create!(
    #         username: (params[:username])
    #         password_digest: (params[:password])
    #     )
    #     render json: user 
    # end

end
