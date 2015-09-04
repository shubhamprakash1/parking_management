class Vendor < ActiveRecord::Base
	belongs_to :user
	belongs_to :parking
end
