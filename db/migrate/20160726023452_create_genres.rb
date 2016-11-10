class CreateGenres < ActiveRecord::Migration
	def change
		create_table :genres do |t|
			t.string :name, limit: 40

			t.timestamps null: false
		end
	end
end
