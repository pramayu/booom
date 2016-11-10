class CreateFontindustries < ActiveRecord::Migration
  def change
    create_table :fontindustries do |t|
      t.references :industry, index: true, foreign_key: true
      t.references :font, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
