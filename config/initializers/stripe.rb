#todo remove the key info from this file and have env variable
#todo recreate new api keys when do that
# if Rails.env == 'production'
# 	Rails.configuration.stripe = {
# 		:publishable_key => 'pk_live_',
# 		:secret_key      => 'sk_live_'
# 	}
# else
# 	Rails.configuration.stripe = {
# 		:publishable_key => 'pk_test_',
# 		:secret_key      => 'sk_test_'
# 	}
	# Rails.configuration.stripe = {
	# 	:publishable_key => 'pk_live_',
	# 	:secret_key      => 'sk_live_'
	# }
# end

Rails.configuration.stripe = {
  :publishable_key => ENV['PUBLISHABLE_KEY'],
  :secret_key      => ENV['SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
