class UserMailer < ActionMailer::Base
  default from: "trello@mailer.com"

  def welcome_email(user)
    @user = user
    @url  = 'http://trello.com/login'
    mail(to: @user.email, subject: 'Welcome to Trello site')
  end
end
