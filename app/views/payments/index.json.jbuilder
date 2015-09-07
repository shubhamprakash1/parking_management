json.array!(@payments) do |payment|
  json.extract! payment, :id, :first_name, :last_name, :last4, :card_security_code, :credit_card_number, :expiration_month, :expiration_year, :amount, :amount, :success, :authorization_code, :user_id, :notify, :parking_id
  json.url payment_url(payment, format: :json)
end
