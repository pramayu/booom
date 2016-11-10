class AddIndexCategory < ActiveRecord::Migration[5.0]
  def change
  	add_index :categories, :name
  	add_index :subcategories, :name
  end
end
