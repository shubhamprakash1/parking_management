class Parking < ActiveRecord::Base  
  include Tokenable
	belongs_to :event
	has_many :vendors
	has_many :users, through: :vendors
	has_many :parking_slots 
 
  dragonfly_accessor :qr_code   
  
	#def self.generate_token
  #   Digest::SHA1.hexdigest([Time.now, rand].join) 
  #end 
  
  def self.generate_token
        token = loop do
        random_token = SecureRandom.hex(10)
        break random_token unless Parking.exists?(token: random_token)
      end 
      return  token
 end

end
