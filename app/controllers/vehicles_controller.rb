class VehiclesController < ApplicationController
	def index

		if current_user
			@vehicles = Vehicle.where(user_id: session[:user_id])
		else
			redirect_to root_path
			flash[:error] = "sign in first"
		end
	end
end
