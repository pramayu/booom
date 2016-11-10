class CreateSocialNetworks < ActiveRecord::Migration
	def change
		create_table :social_networks do |t|
			t.string :behance
			t.string :deviant
			t.string :digg
			t.string :facebook
			t.string :dribbble
			t.string :facebook
			t.string :flickr
			t.string :github
			t.string :linkedin
			t.string :youtube
			t.string :twitter
			t.string :tumblr

			t.timestamps null: false
		end
	end
end
