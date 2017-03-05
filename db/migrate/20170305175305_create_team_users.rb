class CreateTeamUsers < ActiveRecord::Migration
  def change
    create_table :team_users do |t|
      t.references :team
      t.references :user

      t.timestamps
    end
  end
end
