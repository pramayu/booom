class CreatePaymentNoties < ActiveRecord::Migration[5.0]
  def change
    create_table :payment_noties do |t|
      t.text :params
      t.references :cart, foreign_key: true, index: true
      t.string :status
      t.string :transaction_id

      t.timestamps
    end
  end
end
