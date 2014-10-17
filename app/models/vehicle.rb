class Vehicle < ActiveRecord::Base
	belongs_to 	:user
	has_many 	:fluid_changes
	has_many 	:parts
	validates :make, presence: true
	validates :model, presence: true
	validates :year, presence: true, numericality: { only_integer: true } 

	def make_model
		self.make + " " + self.model
	end

	def vehicle_info
		make_model + " " + self.year.to_s + " " + self.style + " " + self.engine_size
	end

	def last_fluid_change
		self.fluid_changes.last.fluid_change_text if self.fluid_changes.length > 0
	end

end
