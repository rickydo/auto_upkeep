class Part < ActiveRecord::Base
	belongs_to :vehicle
	validates :mileage, presence: true, numericality: { only_integer: true}

	def part_text
		self.name + " " + self.part_number + " @" + self.mileage.to_s + " miles " + part_date
	end

	def part_date
		self.created_at.strftime("changed on %m/%d/%Y")
	end
end
