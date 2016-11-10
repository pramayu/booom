class AddModelsubIdT3ds < ActiveRecord::Migration
  def up
  	add_reference :t3ds, :modelsub, index: true, foreign_key: true
  	add_reference :t3ds, :genre, index: true, foreign_key: true
  	add_reference :t3ds, :geometry, index: true, foreign_key: true
  end
end
