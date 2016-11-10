class AddVideoDemoToCodes < ActiveRecord::Migration
  def change
    add_column :codes, :video_demo, :string
  end
end
