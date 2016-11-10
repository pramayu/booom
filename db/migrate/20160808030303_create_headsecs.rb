class CreateHeadsecs < ActiveRecord::Migration
  def change
    create_table :headsecs do |t|
      t.string :name
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
