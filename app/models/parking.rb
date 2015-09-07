class Parking < ActiveRecord::Base
	belongs_to :event
	has_many :vendors
	has_many :users, through: :vendors
	has_many :parking_slots 
 
  dragonfly_accessor :qr_code   
  
	def self.generate_token
     Digest::SHA1.hexdigest([Time.now, rand].join) 
  end

end
