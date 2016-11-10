class CreateOurlists < ActiveRecord::Migration
  def change
    create_table :ourlists do |t|
      t.references :theme, index: true, foreign_key: true
      t.references :wishlist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
