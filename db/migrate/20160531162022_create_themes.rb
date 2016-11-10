class CreateThemes < ActiveRecord::Migration
	def up
		create_table :themes do |t|
			t.string :name, limit: 150
			t.text :description
			t.timestamps null: false
		end
	end
	def down
		drop_table :themes
	end
end
