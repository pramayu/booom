class CreateAeplugins < ActiveRecord::Migration
  def change
    create_table :aeplugins do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
