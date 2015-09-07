class ParkingsController < ApplicationController
  before_action :set_parking, only: [:show, :edit, :update, :destroy]

  # GET /parkings
  # GET /parkings.json
  def index
    @parkings = Parking.all
  end

  # GET /parkings/1
  # GET /parkings/1.json
  def show
    @parking = Parking.find(params[:id])
   # qr_code_img = RQRCode::QRCode.new(@parking.payment_url, :size => 35, :level => :h ).to_img
   # @parking.update_attribute :qr_code, qr_code_img.to_string
   # VendorNotifier.send_qrcode_generated(@parking).deliver
    
    respond_to do |format|
      format.html
      format.pdf do
        pdf = ReportPdf.new(@parking)
        send_data pdf.render, filename: 'parking_QRcode.pdf', type: 'application/pdf'
      end
    end
  end

  # GET /parkings/new
  def new
    @parking = Parking.new
  end

  # GET /parkings/1/edit
  def edit
  end

  # POST /parkings
  # POST /parkings.json
  def create   
    Parking.generate_token  
    pay_url = root_url + 'siteparking/sitepayments/' +  Parking.generate_token 
    @parking = Parking.new(parking_params)
    @parking.payment_url = pay_url  
    qr_code_img = RQRCode::QRCode.new(@parking.payment_url, :size => 40, :level => :h ).to_img
    @parking.qr_code = qr_code_img.to_string
    
    respond_to do |format|
      if @parking.save
        format.html { redirect_to @parking, notice: 'Parking was successfully created.' }
        format.json { render :show, status: :created, location: @parking }
      else
        format.html { render :new }
        format.json { render json: @parking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parkings/1
  # PATCH/PUT /parkings/1.json
  def update
    respond_to do |format|
      if @parking.update(parking_params)
        format.html { redirect_to @parking, notice: 'Parking was successfully updated.' }
        format.json { render :show, status: :ok, location: @parking }
      else
        format.html { render :edit }
        format.json { render json: @parking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parkings/1
  # DELETE /parkings/1.json
  def destroy
    @parking.destroy
    respond_to do |format|
      format.html { redirect_to parkings_url, notice: 'Parking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parking
      @parking = Parking.find(params[:id]) 
      if params[:event_id]
        @event = Event.find(params[:event_id]) 
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parking_params
      params.require(:parking).permit(:name, :event_id, :price, :total_slot, :vendor_id, :map, :payment_url)
    end
end
