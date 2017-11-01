class UserMailer < ApplicationMailer
	default from: 'ankitadangi11@gmail.com'
 
  def welcome_email(user)
    @user = user
    attachments['banner.jpg'] = File.read("#{Rails.root}/app/assets/images/banner.jpg")
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
  end 