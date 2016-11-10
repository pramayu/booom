class CreateCodesubs < ActiveRecord::Migration
  def change
    create_table :codesubs do |t|
      t.string :name
      t.references :subcategory, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
