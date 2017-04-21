class Team < ActiveRecord::Base
  has_many :team_users
  has_many :users, through: :team_users
  has_many :board_teams
  has_many :boards, through: :board_teams
end
