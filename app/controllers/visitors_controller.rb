class VisitorsController < ApplicationController  
  layout "visitors"
  def scan_qr_code  
    
  end

  def index
    source = "http://localhost:3000/api/parkings.json"
    # @data = JSON.parse(JSON.open(source))
  end  
  
  def parkings   
     @parkings = Parking.all      
  end

end
