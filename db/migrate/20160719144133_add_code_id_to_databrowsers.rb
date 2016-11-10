class AddCodeIdToDatabrowsers < ActiveRecord::Migration
  def change
    add_reference :databrowsers, :code, index: true, foreign_key: true
    add_reference :dataincludes, :code, index: true, foreign_key: true 
    add_reference :datasubcategories, :code, index: true, foreign_key: true 
    add_reference :datacompatibles, :code, index: true, foreign_key: true 
    add_reference :taggings, :code, index: true, foreign_key: true
    add_reference :screenshots, :code, index: true, foreign_key: true
    add_reference :brokes, :code, index: true, foreign_key: true
  end
end
