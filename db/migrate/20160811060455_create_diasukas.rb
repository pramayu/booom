class CreateDiasukas < ActiveRecord::Migration
  def change
    create_table :diasukas do |t|
      t.references :akusuka, index: true, foreign_key: true
      t.references :theme, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
