class AddFontIdToDataincludes < ActiveRecord::Migration
  def change
    add_reference :dataincludes, :font, index: true, foreign_key: true
    add_reference :screenshots, :font, index: true, foreign_key: true
    add_reference :brokes, :font, index: true, foreign_key: true
    add_reference :comments, :font, index: true, foreign_key: true
    add_reference :notifications, :font, index: true, foreign_key: true
    add_reference :wishlists, :font, index: true, foreign_key: true
  end
end
