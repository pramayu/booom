class AddUserIdToCarts < ActiveRecord::Migration[5.0]
  def change
    add_reference :carts, :user, foreign_key: true, index: true
  end
end
