class AddLineItemIdToNotifications < ActiveRecord::Migration[5.0]
  def change
    add_reference :notifications, :line_item, foreign_key: true, index: true
  end
end
