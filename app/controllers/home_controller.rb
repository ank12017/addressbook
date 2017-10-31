class HomeController < ApplicationController
  def index
  end
  def contact
  end
  def register
  end
  def text
  end
  def faq
  end
  def basket
  end
  def category
  end
  def checkout1
  end
  def checkout2
  end
  def checkout3
  end
  def checkout4
  end
  def detail
  end
  def category_right
  end
  def category_full
  end
  def customer_order
  end
  def customer_orders
  end
  def customer_wishlist
  end
  def customer_account
  end
  def blog
  end
  def post
  end
  def error
  end
  def contact_us_mailer
    @email = params[:email]
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @subject = params[:subject]
    @message = params[:message]
    UserMailer.welcome_email(user).deliver_now if user_signed_in? 
   end 
end
