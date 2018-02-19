class PageController < ApplicationController
	def home
		authenticate_user!
	end
end
