class AddColumnToThemes < ActiveRecord::Migration
  def change
    add_column :themes, :column, :string
    add_column :themes, :layout, :string
  end
end
