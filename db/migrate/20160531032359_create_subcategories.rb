class CreateSubcategories < ActiveRecord::Migration
  def up
		create_table :subcategories do |t|
			t.string :name, limit: 30
			t.references :category, index: true, foreign_key: true
			t.timestamps null: false
		end
	end
	def down
		drop_table :subcategories
	end
end
