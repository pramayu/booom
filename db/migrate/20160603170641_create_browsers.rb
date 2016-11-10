class CreateBrowsers < ActiveRecord::Migration
	def up
		create_table :browsers do |t|
			t.string :name, limit: 30
			t.timestamps null: false
		end
	end
	def down
		drop_table :browsers
	end
end
