class CreateVidems < ActiveRecord::Migration
  def change
    create_table :videms do |t|
      t.string :trailer
      t.references :videofx, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
