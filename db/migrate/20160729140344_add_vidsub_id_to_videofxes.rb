class AddVidsubIdToVideofxes < ActiveRecord::Migration
  def change
    add_reference :videofxes, :vidsub, index: true, foreign_key: true
  end
end
