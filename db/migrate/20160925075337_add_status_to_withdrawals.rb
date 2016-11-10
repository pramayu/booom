class AddStatusToWithdrawals < ActiveRecord::Migration[5.0]
  def change
    add_column :withdrawals, :status, :boolean, default: false
  end
end
