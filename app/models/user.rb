class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  after_create :send_welcome_mail



  # methods

  def send_welcome_mail
  	@user = self
  	UserMailer.welcome_email(@user).deliver
  end
end