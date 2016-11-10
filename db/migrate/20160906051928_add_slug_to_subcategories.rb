class AddSlugToSubcategories < ActiveRecord::Migration[5.0]
  def change
    add_column :subcategories, :slug, :string, unique: true, index: true
    add_index :categories, :slug
  end
end
