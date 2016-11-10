class AddThumbnailToThemes < ActiveRecord::Migration
  def change
  	add_column :themes, :thumbnail, :string, :limit => 50
  end
end
