class AddAggreeToThemes < ActiveRecord::Migration
  def change
    add_column :themes, :aggree, :boolean
  end
end
