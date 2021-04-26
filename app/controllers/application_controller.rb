
#Stripe Payment On Rails
# Author by Rony MAN
# visit website : wwww.ronyman.com/stripe


class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end