class CreateDatacolls < ActiveRecord::Migration
  def change
    create_table :datacolls do |t|
      t.references :theme, index: true, foreign_key: true
      t.references :collection, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
