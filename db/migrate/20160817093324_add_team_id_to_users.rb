class AddTeamIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :team, index: true, foreign_key: true
    add_column :users, :leader, :boolean, default: false
  end
end
