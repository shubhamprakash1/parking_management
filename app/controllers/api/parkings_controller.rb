module Api
  class ParkingsController < ApplicationController
    respond_to :json
      
    def index
      respond_with Parking.all
    end
  end
end