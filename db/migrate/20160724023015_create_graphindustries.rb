class CreateGraphindustries < ActiveRecord::Migration
  def change
    create_table :graphindustries do |t|
      t.references :graphic, index: true, foreign_key: true
      t.references :industry, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
