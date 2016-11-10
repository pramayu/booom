class CreateToitems < ActiveRecord::Migration[5.0]
  def change
    create_table :toitems do |t|
      t.string :name

      t.timestamps
    end
  end
end
