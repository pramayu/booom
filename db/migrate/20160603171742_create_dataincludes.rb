class CreateDataincludes < ActiveRecord::Migration
	def up
		create_table :dataincludes do |t|
			t.references :include, index: true, foreign_key: true
			t.references :theme, index: true, foreign_key: true

			t.timestamps null: false
		end
	end
	def down
		drop_table :dataincludes
	end
end
