class CreateBoardUsers < ActiveRecord::Migration
  def change
    create_table :board_users do |t|
      t.references :board, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
