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
    @email = params[:test][:email]
    @first_name = params[:test][:first_name]
    @last_name = params[:test][:last_name]
    @subject = params[:test][:subject]
    @message = params[:test][:message]
    @user = User.create(first_name: @first_name, last_name: @last_name, subject: @subject, message: @message, email: @email, password: "12345678")
    UserMailer.welcome_email(@user).deliver_now
    redirect_to root_path
end 
end
