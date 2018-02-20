class PaymentsController < ApplicationController
  def new
  end

  def create
  	redirect_to payments_thanks_path
  end

  def thanks
  end
end
