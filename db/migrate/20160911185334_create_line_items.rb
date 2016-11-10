class CreateLineItems < ActiveRecord::Migration[5.0]
  def change
    create_table :line_items do |t|
      t.references :cart, foreign_key: true
      t.references :theme, foreign_key: true
      t.decimal :unit_price

      t.timestamps
    end
  end
end
