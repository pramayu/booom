class AddBaToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :balance, :decimal, :default => 0.0
  end
end
