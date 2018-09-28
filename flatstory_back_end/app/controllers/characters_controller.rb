class CharactersController < ApplicationController
    def index
		characters = Character.all
		render json: characters
	end
	
	def show 
		character = Character.find(params[:id])
		render json: character
	end 

	private 
	def character_params 
		params.require(:character).permit(:character_name, :user_id, :base_health, :base_strength, :base_speed, :base_damage)
	end 
end
