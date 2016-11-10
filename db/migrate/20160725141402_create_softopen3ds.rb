class CreateSoftopen3ds < ActiveRecord::Migration
  def change
    create_table :softopen3ds do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
