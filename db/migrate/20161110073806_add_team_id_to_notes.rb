class AddTeamIdToNotes < ActiveRecord::Migration[5.0]
  def change
    add_reference :notes, :team, foreign_key: true, index: true
  end
end
