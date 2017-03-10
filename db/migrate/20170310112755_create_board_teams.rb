class CreateBoardTeams < ActiveRecord::Migration
  def change
    create_table :board_teams do |t|
      t.references :board, index: true
      t.references :team, index: true

      t.timestamps
    end
  end
end
