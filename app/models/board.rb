class Board < ActiveRecord::Base
	has_many :board_users
	has_many :users, through: :board_users
end
