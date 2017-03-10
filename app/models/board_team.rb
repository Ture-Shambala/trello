class BoardTeam < ActiveRecord::Base
  belongs_to :board
  belongs_to :team
end
