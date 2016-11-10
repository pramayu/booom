class CreateT3ds < ActiveRecord::Migration
  def change
    create_table :t3ds do |t|
      t.string :name, limit: 150
      t.string :description
      t.references :category, index: true, foreign_key: true
      t.references :softopen3d, index: true, foreign_key: true
      t.text :note
      t.string :thumbnail
      t.decimal :price
      t.boolean :agree, default: false
      t.string :slug, unique: true
      t.string :url_demo
      t.string :video_demo
      t.references :user, index: true, foreign_key: true
      t.string :animated, limit: 10
      t.string :low_poly, limit: 10
      t.string :material, limit: 10
      t.string :rigged, limit: 10
      t.string :texture, limit: 10
      t.string :uv_mapped, limit: 10
      t.string :unwrapped_uvs, limit: 10
      t.string :bitmap_texture, limit: 10
      t.string :procedural_texture, limit: 10
      t.string :tileable, limit: 10
      t.string :layered, limit: 10
      t.string :resolution, limit: 20



      t.timestamps null: false
    end
  end
end
