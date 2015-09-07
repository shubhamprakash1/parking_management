class VendorNotifier < ApplicationMailer
	default :from => 'amitk7075@gmail.com'
	layout 'mailer'
  # send a signup email to the user, pass in the user object that   contains the user's email address
  # def send_signup_email(user)
  #   @user = user
  #   mail( :to => @user.email,
  #   :subject => 'Thanks for signing up for our amazing app' )
  # end

  def send_qrcode_generated(parking)
  	@parking = parking
    mail( :to => 'saketkumarjaiswal@gmail.com',
    :subject => 'New QR code is generated' )
  end

end
