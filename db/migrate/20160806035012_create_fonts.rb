class CreateFonts < ActiveRecord::Migration
  def up
    create_table :fonts do |t|
      t.string :name
      t.text :description
      t.references :category, index: true, foreign_key: true
      t.text :note
      t.string :thumbnail
      t.decimal :price
      t.boolean :agree, default: false
      t.string :slug, unique: true
      t.string :file_size, limit: 20
      t.string :vector, limit: 10
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end

  def down
  	drop_table :fonts
  end
end
