class AddGraphicIdDatasubcategories < ActiveRecord::Migration
  def up
  	add_reference :datasubcategories, :graphic, index:true, foreign_key: true
  	add_reference :taggings, :graphic, index:true, foreign_key: true
  	add_reference :screenshots, :graphic, index:true, foreign_key: true
  	add_reference :brokes, :graphic, index:true, foreign_key: true
  	add_reference :comments, :graphic, index:true, foreign_key: true
  	add_reference :notifications, :graphic, index:true, foreign_key: true
  end
end
