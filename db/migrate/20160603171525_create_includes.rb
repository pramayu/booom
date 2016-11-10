class CreateIncludes < ActiveRecord::Migration
	def change
		create_table :includes do |t|
			t.string :name, limit: 30

			t.timestamps null: false
		end
	end
	def down
		drop_table :includes
	end
end
