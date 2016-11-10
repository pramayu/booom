class CreateCanopens < ActiveRecord::Migration
  def change
    create_table :canopens do |t|
      t.references :softopen3d, index: true, foreign_key: true
      t.references :t3d, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
