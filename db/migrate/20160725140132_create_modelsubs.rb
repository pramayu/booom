class CreateModelsubs < ActiveRecord::Migration
  def change
    create_table :modelsubs do |t|
      t.string :name
      t.references :subcategory, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
