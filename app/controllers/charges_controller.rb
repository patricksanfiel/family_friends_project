class ChargesController < ApplicationController
  before_action :set_product


  def new
  end

  def create
    # Amount in cents
    @amount = @product.price_in_cents
    @amount_cents = (@product.price_in_cents.to_i) * 100

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount_cents,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  def set_product
    @product = Product.find(params[:product_id])
  end


end