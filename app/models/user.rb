class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # assosiations
  has_many :board_users
  has_many :board, through: :board_users
  has_many :team_users
  has_many :teams, through: :team_users
  # callbacks
  after_create :send_welcome_mail



  # methods

  def send_welcome_mail
  	@user = self
  	UserMailer.welcome_email(@user).deliver
  end
end
