class VisitorsController < ApplicationController  
  layout "visitors"
  before_action :authenticate_user!
  def scan_qr_code  
    
  end

  def index
  end  

  def parkings   
     @parkings = Parking.all      
  end

end
