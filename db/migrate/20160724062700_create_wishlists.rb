class CreateWishlists < ActiveRecord::Migration
  def change
    create_table :wishlists do |t|
      t.references :user, index: true, foreign_key: true
      t.references :theme, index: true, foreign_key: true
      t.references :code, index: true, foreign_key: true
      t.references :graphic, index: true, foreign_key: true
      t.integer :identifier

      t.timestamps null: false
    end
  end
end
