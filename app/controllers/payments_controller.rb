class PaymentsController < ApplicationController
  before_action :set_payment, only: [:show, :edit, :update, :destroy]
  layout 'visitors'
  # GET /payments
  # GET /payments.json
  def index
    @payments = Payment.all
  end

  # GET /payments/1
  # GET /payments/1.json
  def show
  end

  # GET /payments/new
  def new  
    @parking = Parking.find_by_token(params[:token])
    if current_user.stripe_customer_id.present?
      @customer =  Stripe::Customer.retrieve(current_user.stripe_customer_id) 
    end
    @payment = Payment.new
  end

  # GET /payments/1/edit
  def edit
  end

  # POST /payments
  # POST /payments.json
  def create
    @payment = Payment.new(payment_params)

    @amount = @payment.amount * 100

    Stripe.api_key = 'sk_test_CfSPVwqeJbuCxJSnCDcXuKRG';

    begin
      if current_user.stripe_customer_id.present?
        @customer =  Stripe::Customer.retrieve(current_user.stripe_customer_id) 
      else
        card_details = {}
        card_details[:name] = payment_params[:first_name]
        card_details[:number] = payment_params[:credit_card_number]
        card_details[:cvc] = payment_params[:card_security_code]
        card_details[:exp_month] = payment_params[:expiration_month]
        card_details[:exp_year] = payment_params[:expiration_year]

        @card = Stripe::Token.create(card: card_details)
        
        @customer = Stripe::Customer.create(
          :email => current_user.email,
          :card  => @card.id
        )

        if @customer.present?
          current_user.stripe_customer_id = @customer.id
          current_user.save!
        end
      end


      @charge = Stripe::Charge.create(
        :customer    => @customer.id,
        :amount      => @amount,
        :description => 'Autopass payment',
        :currency    => 'usd'
      )

      if @payment.save
       redirect_to success_payment_path(@payment), notice: 'Payment was successfully created. Vender will be notified.'
      end
    rescue Stripe::CardError => e
      redirect_to "/siteparking/sitepayments/#{@payment.parking.token}"
      flash[:error] = e.message
    end  


  end

  # PATCH/PUT /payments/1
  # PATCH/PUT /payments/1.json
  def update
    respond_to do |format|
      if @payment.update(payment_params)
        format.html { redirect_to @payment, notice: 'Payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @payment }
      else
        format.html { render :edit }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payments/1
  # DELETE /payments/1.json
  def destroy
    @payment.destroy
    respond_to do |format|
      format.html { redirect_to payments_url, notice: 'Payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def reciept
    @payment = Payment.find(params[:id])
    @user = User.find(@payment.parking.vendor_id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment
      @payment = Payment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_params
      params.require(:payment).permit(:first_name, :last_name, :last4, :card_security_code, :credit_card_number, :expiration_month, :expiration_year, :amount, :amount, :success, :authorization_code, :user_id, :notify, :parking_id)
    end
end
