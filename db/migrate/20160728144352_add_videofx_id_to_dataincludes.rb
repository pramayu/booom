class AddVideofxIdToDataincludes < ActiveRecord::Migration
  def up
    add_reference :dataincludes, :videofx, index: true, foreign_key: true
    add_reference :datasubcategories, :videofx, index: true, foreign_key: true
    add_reference :taggings, :videofx, index: true, foreign_key: true
    add_reference :screenshots, :videofx, index: true, foreign_key: true
    add_reference :brokes, :videofx, index: true, foreign_key: true
    add_reference :comments, :videofx, index: true, foreign_key: true
    add_reference :notifications, :videofx, index: true, foreign_key: true
    add_reference :wishlists, :videofx, index: true, foreign_key: true
  end
end
