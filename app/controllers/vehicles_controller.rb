class VehiclesController < ApplicationController
	def index
		if current_user
			@vehicles = Vehicle.where(user_id: session[:user_id])
			
		else
			redirect_to root_path
			flash[:error] = "In order to see your vehicles you need to sign in first."
		end
	end
end
