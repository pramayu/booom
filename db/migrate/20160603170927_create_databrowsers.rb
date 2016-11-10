class CreateDatabrowsers < ActiveRecord::Migration
	def up
		create_table :databrowsers do |t|
			t.references :browser, index: true, foreign_key: true 
			t.references :theme, index: true, foreign_key: true 
			t.timestamps null: false
		end
	end
	def down
		drop_table :databrowsers
	end
end
