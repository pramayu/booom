class CreateDatacompatibles < ActiveRecord::Migration
	def up
		create_table :datacompatibles do |t|
			t.references :theme, index: true, foreign_key: true
			t.references :compatible, index: true, foreign_key: true

			t.timestamps null: false
		end
	end
	def down
		drop_table :datacompatibles
	end
end
