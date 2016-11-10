class AddPriceToThemes < ActiveRecord::Migration
  def change
    add_column :themes, :price, :decimal
  end
end
