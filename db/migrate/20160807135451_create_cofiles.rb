class CreateCofiles < ActiveRecord::Migration
  def change
    create_table :cofiles do |t|
      t.string :coke
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
