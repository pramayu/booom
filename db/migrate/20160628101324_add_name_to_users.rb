class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_n, :string, limit: 30
    add_column :users, :last_n, :string, limit: 30
    add_column :users, :company, :string, limit: 40
    add_column :users, :country, :string, limit: 20
    add_column :users, :city, :string, limit: 30
    add_column :users, :postal_code, :string, limit: 10
    add_column :users, :avatar, :string
    add_column :users, :show_country, :boolean, default: false
    add_column :users, :freelance_av, :boolean, default: false
  end
end
