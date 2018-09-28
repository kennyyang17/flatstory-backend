class UsersController < ApplicationController
    def index
		users = User.all
		render json: users
	end
	
	def show 
		user = User.find(params[:id])
		render json: user
    end 
    
    def create
        user = User.new(user_params)
        if user.valid?
            user.save 
            render json: user_name
        else render json: user.errors
        end
    end

	private 
	def user_params 
		params.require(:user).permit(:user_name)
	end 
end
