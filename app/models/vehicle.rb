class Vehicle < ActiveRecord::Base
	belongs_to 	:user
	has_many 	:fluid_changes
	has_many 	:parts
	validates :make, presence: true
	validates :model, presence: true
	validates :year, presence: true, numericality: { only_integer: true } 
end
