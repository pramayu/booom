class CreateGeometries < ActiveRecord::Migration
  def change
    create_table :geometries do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
