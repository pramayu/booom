class AddTeamIdToThemes < ActiveRecord::Migration[5.0]
  def change
    add_reference :themes, :team, index: true,  foreign_key: true
  end
end
