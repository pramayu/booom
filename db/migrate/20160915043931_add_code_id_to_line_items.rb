class AddCodeIdToLineItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :line_items, :code, foreign_key: true, index: true
    add_reference :line_items, :font, foreign_key: true, index: true
    add_reference :line_items, :course, foreign_key: true, index: true
    add_reference :line_items, :t3d, foreign_key: true, index: true
    add_reference :line_items, :graphic, foreign_key: true, index: true
    add_reference :line_items, :videofx, foreign_key: true, index: true 
  end
end
