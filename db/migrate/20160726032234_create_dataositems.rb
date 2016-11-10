class CreateDataositems < ActiveRecord::Migration
  def change
    create_table :dataositems do |t|
      t.references :t3d, index: true, foreign_key: true
      t.references :ositem, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
