class AddGraphicIdToDataincludes < ActiveRecord::Migration
  def change
    add_reference :dataincludes, :graphic, index: true, foreign_key: true
  end
end
