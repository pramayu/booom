class AddPriceExtToCodes < ActiveRecord::Migration[5.0]
  def change
    add_column :codes, :price_ext, :decimal
    add_reference :codes, :team, foreign_key: true, index: true
  end
end
