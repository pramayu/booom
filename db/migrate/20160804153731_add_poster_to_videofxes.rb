class AddPosterToVideofxes < ActiveRecord::Migration
  def change
    add_column :videofxes, :poster, :string
  end
end
