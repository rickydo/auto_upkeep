class Part < ActiveRecord::Base
	belongs_to :vehicle
	validates :mileage, presence: true, numericality: { only_integer: true}
end
