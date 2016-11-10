class AddT3dIdToDataincludes < ActiveRecord::Migration
  def up
    add_reference :dataincludes, :t3d, index: true, foreign_key: true
    add_reference :datasubcategories, :t3d, index: true, foreign_key: true
    add_reference :taggings, :t3d, index: true, foreign_key: true
    add_reference :screenshots, :t3d, index: true, foreign_key: true
    add_reference :brokes, :t3d, index: true, foreign_key: true
    add_reference :comments, :t3d, index: true, foreign_key: true
    add_reference :notifications, :t3d, index: true, foreign_key: true
    add_reference :wishlists, :t3d, index: true, foreign_key: true
  end
end
