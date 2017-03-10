class AddTeamIdToBoard < ActiveRecord::Migration
  def change
    add_column :boards, :team_id, :integer
  end
end
