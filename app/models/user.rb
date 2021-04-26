#Stripe Payment On Rails
# Author by Rony MAN
# visit website : wwww.ronyman.com/stripe


class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
