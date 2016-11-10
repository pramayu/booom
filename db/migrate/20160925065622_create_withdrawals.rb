class CreateWithdrawals < ActiveRecord::Migration[5.0]
  def change
    create_table :withdrawals do |t|
      t.decimal :mount
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
