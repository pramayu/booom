class AddToItemToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :to_item, :string
  end
end
