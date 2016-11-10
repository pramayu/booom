class AddCourseIdToDatasubcategories < ActiveRecord::Migration
  def change
    add_reference :datasubcategories, :course, index: true, foreign_key: true
    add_reference :taggings, :course, index: true, foreign_key: true
    add_reference :brokes, :course, index: true, foreign_key: true
    add_reference :comments, :course, index: true, foreign_key: true
    add_reference :notifications, :course, index: true, foreign_key: true
    add_reference :wishlists, :course, index: true, foreign_key: true
  end
end
