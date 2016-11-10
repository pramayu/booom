class CreateVideofxes < ActiveRecord::Migration
	def change
		create_table :videofxes do |t|
			t.string :name
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
