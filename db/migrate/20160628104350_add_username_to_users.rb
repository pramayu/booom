class AddUsernameToUsers < ActiveRecord::Migration
	def change
		add_column :users, :username, :string, limit: 30, unique: true
	end
end