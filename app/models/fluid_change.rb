class FluidChange < ActiveRecord::Base
	belongs_to 	:vehicle
	validates :name, presence: true 
	validates :mileage, presence: true, numericality: { only_integer: true }
end
