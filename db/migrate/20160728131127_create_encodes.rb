class CreateEncodes < ActiveRecord::Migration
  def change
    create_table :encodes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
