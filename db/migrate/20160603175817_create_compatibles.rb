class CreateCompatibles < ActiveRecord::Migration
	def change
		create_table :compatibles do |t|
			t.string :name, limit: 30

			t.timestamps null: false
		end
	end
	def down
		drop_table :compatibles
	end
end
