class Vehicle < ActiveRecord::Base
	belongs_to 	:owner, class_name: "User"
	has_many 	:fluid_changes
	has_many 	:parts
end
