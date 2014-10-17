class FluidChangeController < ApplicationController
	def new
		raise params.inspect
		@fluid_change = FluidChange.new
	end

	def create
		@fluid_change = FluidChange.new(new_fluid_params)
		# @vehicle_id = params
		if @fluid_change.save
			redirect_to vehicles_path
		else
			redirect_to new_fluid_change_path
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
