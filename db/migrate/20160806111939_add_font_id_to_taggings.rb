class AddFontIdToTaggings < ActiveRecord::Migration
  def change
    add_reference :taggings, :font, index: true, foreign_key: true
  end
end
