#Stripe Payment On Rails
# Author by Rony MAN
# visit website : wwww.ronyman.com/stripe


class ChargesController < ApplicationController

before_action :authenticate_user!

  def new
end

  def charges
end

def create
  @amount = 500

  customer = Stripe::Customer.create(
    email: params[:stripeEmail],
    source: params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    customer: customer.id,
    amount: @amount,
    description: 'RailsOnStripe customer',
    currency: 'usd'
  )

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end


def create
    customer = StripeTool.create_customer(email: params[:stripeEmail], 
                                          stripe_token: params[:stripeToken])

    charge = StripeTool.create_charge(customer_id: customer.id, 
                                      amount: @amount,
                                      description: @description)

    redirect_to thanks_path
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

def thanks
  end



end
