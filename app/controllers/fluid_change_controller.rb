class FluidChangeController < ApplicationController
	def new
		@fluid_change = FluidChange.new
		@vehicle_id = params[:vehicle_id]
	end

	def create
		@fluid_change = FluidChange.new(new_fluid_params)

		if @fluid_change.save
			redirect_to vehicle_path(params[:vehicle_id])
		else
			redirect_to new_vehicle_fluid_change_path
			flash[:error] = @fluid_change.errors.empty? ? "Error" : @fluid_change.errors.full_message.to_sentence
		end
	end

	private

	def new_fluid_params
		params.require(:fluid_change).permit(
			:fluid_type,
			:mileage,
			:name,
			:weight,
			:vehicle_id
			)
	end

end
