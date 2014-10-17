class FluidChange < ActiveRecord::Base
	belongs_to 	:vehicle
	validates :name, presence: true 
	validates :mileage, presence: true, numericality: { only_integer: true }

	def fluid_change_text
		"Type of fluid: " + self.fluid_type + " " + self.name + " " + self.weight + " " + "@" + self.mileage.to_s + " miles. Changed on " + change_date
	end

	def change_date
		self.created_at.strftime("%m/%d/%Y")
	end

end
