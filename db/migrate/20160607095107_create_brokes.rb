class CreateBrokes < ActiveRecord::Migration
	def up
		create_table :brokes do |t|
			t.string :resources
			t.references :theme, index: true, foreign_key: true
			t.timestamps null: false
		end
	end
	def down
		drop_table :brokes
	end
end
