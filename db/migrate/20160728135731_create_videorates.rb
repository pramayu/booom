class CreateVideorates < ActiveRecord::Migration
  def change
    create_table :videorates do |t|
      t.references :framerate, index: true, foreign_key: true
      t.references :videofx, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
