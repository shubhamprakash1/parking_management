class User < ActiveRecord::Base

	has_many :billings
	has_many :vendors
	has_many :parkings, through: :vendors

  enum role: [:user, :vendor, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end 
  
  def name 
    self.first_name
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
