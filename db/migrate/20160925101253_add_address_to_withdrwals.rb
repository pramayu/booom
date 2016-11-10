class AddAddressToWithdrwals < ActiveRecord::Migration[5.0]
  def change
    add_column :withdrawals,:address, :string
  end
end
