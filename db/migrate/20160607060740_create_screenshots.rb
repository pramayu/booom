class CreateScreenshots < ActiveRecord::Migration
	def up
		create_table :screenshots do |t|
			t.string :screenshot
			t.references :theme, index: true, foreign_key: true
			t.timestamps null: false
		end
	end
	def down
		drop_table :screenshots
	end
end
