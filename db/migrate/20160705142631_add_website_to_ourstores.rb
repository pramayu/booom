class AddWebsiteToOurstores < ActiveRecord::Migration
  def change
    add_column :ourstores, :website, :string
  end
end
