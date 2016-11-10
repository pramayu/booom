class CreateTags < ActiveRecord::Migration
	def change
		create_table :tags do |t|
			t.string :name, limit: 40
			t.timestamps null: false
		end
	end
	def down
		drop_table :tags
	end
end
