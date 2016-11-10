class CreateOsitems < ActiveRecord::Migration
  def up
    create_table :ositems do |t|
      t.string :name, :limit => 20
      t.timestamps null: false
    end
  end
end
