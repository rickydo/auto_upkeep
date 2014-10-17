class VehiclesController < ApplicationController
	def index
		if current_user
			@vehicles = Vehicle.where(user_id: session[:user_id])

		else
			redirect_to root_path
			flash[:error] = "In order to see your vehicles you need to sign in first."
		end
	end

	def show
		@vehicle = Vehicle.find(params[:id])
	end

	def new
		@vehicle = Vehicle.new
	end

	def create
		@vehicle = Vehicle.new

		if @vehicle.save
			redirect_to vehicles_path
		else
			redirect_to new_vehicle_path
			flash[:error] = @vehicle.errors.empty? ? "Error" : @vehicle.errors.full_messages.to_sentence
		end
	end
end
