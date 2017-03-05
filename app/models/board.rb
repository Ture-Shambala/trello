class Board < ActiveRecord::Base
	has_many :board_users
	has_many :boards, through: :board_users
	has_many :team_users
	has_many :teams, through: :team_users
end
