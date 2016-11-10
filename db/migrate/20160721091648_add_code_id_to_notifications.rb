class AddCodeIdToNotifications < ActiveRecord::Migration
  def change
    add_reference :notifications, :code, index: true, foreign_key: true
  end
end
