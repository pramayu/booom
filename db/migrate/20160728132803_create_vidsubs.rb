class CreateVidsubs < ActiveRecord::Migration
  def change
    create_table :vidsubs do |t|
      t.string :name
      t.references :subcategory, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
