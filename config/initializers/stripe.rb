#todo remove the key info from this file and have env variable
#todo recreate new api keys when do that
# if Rails.env == 'production'
# 	Rails.configuration.stripe = {
# 		:publishable_key => 'pk_live_Mott3u7ZlK34xlYDayFYSTp5',
# 		:secret_key      => 'sk_live_0pH3Sr5SqkbAxagCuK65j8PQ'
# 	}
# else
# 	Rails.configuration.stripe = {
# 		:publishable_key => 'pk_test_qJbYadi6trFs3qkd6oiH5sm9',
# 		:secret_key      => 'sk_test_pYCseHS0BGCNJwHTIs22uuKq'
# 	}
	# Rails.configuration.stripe = {
	# 	:publishable_key => 'pk_live_Mott3u7ZlK34xlYDayFYSTp5',
	# 	:secret_key      => 'sk_live_0pH3Sr5SqkbAxagCuK65j8PQ'
	# }
# end

Rails.configuration.stripe = {
  :publishable_key => ENV['PUBLISHABLE_KEY'],
  :secret_key      => ENV['SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
