class CreateOurstores < ActiveRecord::Migration
	def change
		create_table :ourstores do |t|
			t.string :header
			t.string :description
			t.references :user, index: true, foreign_key: true

			t.timestamps null: false
		end
	end
end
