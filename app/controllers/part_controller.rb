class PartController < ApplicationController

	def new
		@part = Part.new
		@vehicle_id = params[:vehicle_id]
	end

	def create
		@part = Part.new(new_part_params)

		if @part.save
			redirect_to vehicle_path(params[:vehicle_id])
		else
			redirect_to new_vehicle_part_path
			flash[:error] = @part.errors.empty? ? "Error" : @part.errors.full_message.to_sentence
		end
	end

	def new_part_params
		params.require(:part).permit(
			:name,
			:part_number,
			:mileage,
			:vehicle_id
			)
	end

end
