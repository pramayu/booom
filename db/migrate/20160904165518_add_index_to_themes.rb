class AddIndexToThemes < ActiveRecord::Migration[5.0]
  def change
    add_index :themes, :name
    add_index :themes, :aggree
    add_index :themes, :price
    add_index :tags, :name
    add_index :codes, :name
    add_index :codes, :agree
    add_index :codes, :price
    add_index :graphics, :name
    add_index :graphics, :agree
    add_index :graphics, :price
    add_index :fonts, :name
    add_index :fonts, :agree
    add_index :fonts, :price
    add_index :courses, :name
    add_index :courses, :agree
    add_index :courses, :price
    add_index :t3ds, :name
    add_index :t3ds, :agree
    add_index :t3ds, :price
    add_index :videofxes, :name
    add_index :videofxes, :agree
    add_index :videofxes, :price
  end
end
