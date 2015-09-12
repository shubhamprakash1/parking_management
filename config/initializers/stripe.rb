Rails.configuration.stripe = {
  :publishable_key => "pk_test_oBqEqUCb9Q4OUrdnq9pT8HXx",
  :secret_key      => "sk_test_CfSPVwqeJbuCxJSnCDcXuKRG"
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
# Stripe.api_key = "5J7dr36JmNpLrXXFwAXChdRzZZwLyCHV"

