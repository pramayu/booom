class AddPriceExtToThemes < ActiveRecord::Migration[5.0]
  def change
    add_column :themes, :price_ext, :decimal
  end
end
