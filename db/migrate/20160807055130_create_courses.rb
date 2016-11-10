class CreateCourses < ActiveRecord::Migration
  def up
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.references :category, index: true, foreign_key: true
      t.text :note
      t.string :thumbnail
      t.decimal :price
      t.boolean :agree, default: false
      t.string :slug, unique: true
      t.string :vi_length, limit: 10
      t.string :skill_level, limit: 20
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end

  def down
  	drop_table :courses
  end
end
