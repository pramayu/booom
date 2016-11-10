class AddNoteToThemes < ActiveRecord::Migration
  def change
    add_column :themes, :note, :text
  end
end
