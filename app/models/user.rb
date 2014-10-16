class User < ActiveRecord::Base
	has_many :vehicles
	has_secure_password
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true, uniqueness: true 
	validates :username, presence: true, uniqueness: true
	validates_format_of :email, :with => /@/
	# validates_format_of :email => /\S{3,}\@\S{3,}\.\S{2,}/

end
