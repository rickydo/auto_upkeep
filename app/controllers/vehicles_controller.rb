class VehiclesController < ApplicationController
	def index
		if current_user
			@vehicles = current_user.vehicles
		else
			redirect_to root_path
			flash[:error] = "In order to see your vehicles you need to sign in first."
		end
	end

	def show
		@vehicle = Vehicle.find(params[:id])
		# @vehicle_id = params[:id]
		# raise params.inspect
	end

	def new
		@vehicle = Vehicle.new
	end

	def create
		@vehicle = Vehicle.new(new_vehicle_params)

		if @vehicle.save
			redirect_to vehicles_path
		else
			redirect_to new_vehicle_path
			flash[:error] = @vehicle.errors.empty? ? "Error" : @vehicle.errors.full_messages.to_sentence
		end
	end

	private 

	def new_vehicle_params
		params.require(:vehicle).permit(
			:make,
			:model,
			:year,
			:style,
			:engine_size,
			:user_id)
	end
end
