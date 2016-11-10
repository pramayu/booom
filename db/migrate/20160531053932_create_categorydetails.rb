class CreateCategorydetails < ActiveRecord::Migration
  def change
    create_table :categorydetails do |t|
      t.references :category, index: true, foreign_key: true
      t.references :subcategory, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
