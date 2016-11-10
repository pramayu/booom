class CreateGraphics < ActiveRecord::Migration
  def change
    create_table :graphics do |t|
      t.string :name, limit: 150
      t.string :description
      t.references :category, index: true, foreign_key: true
      t.references :softopen, index: true, foreign_key: true
      t.text :note
      t.string :thumbnail
      t.decimal :price
      t.boolean :agree, default: false
      t.string :slug, unique: true
      t.string :url_demo
      t.string :video_demo
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
