class Parking < ActiveRecord::Base
	belongs_to :event
	has_many :vendors
	has_many :users, through: :vendors
end
