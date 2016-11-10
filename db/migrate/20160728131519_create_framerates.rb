class CreateFramerates < ActiveRecord::Migration
  def change
    create_table :framerates do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
