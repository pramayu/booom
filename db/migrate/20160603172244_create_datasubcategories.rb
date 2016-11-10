class CreateDatasubcategories < ActiveRecord::Migration
	def up
		create_table :datasubcategories do |t|
			t.references :subcategory, index: true, foreign_key: true
			t.references :theme, index: true, foreign_key: true

			t.timestamps null: false
		end
	end
	def down
		drop_table :datasubcategories
	end
end
