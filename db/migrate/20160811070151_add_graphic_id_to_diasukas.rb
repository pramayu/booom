class AddGraphicIdToDiasukas < ActiveRecord::Migration
  def change
    add_reference :diasukas, :graphic, index: true, foreign_key: true
    add_reference :diasukas, :videofx, index: true, foreign_key: true
    add_reference :diasukas, :font, index: true, foreign_key: true
    add_reference :diasukas, :course, index: true, foreign_key: true
    add_reference :diasukas, :t3d, index: true, foreign_key: true
  end
end
