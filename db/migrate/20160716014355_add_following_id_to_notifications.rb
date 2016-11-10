class AddFollowingIdToNotifications < ActiveRecord::Migration
  def change
    add_reference :notifications, :following_by, index: true
    add_foreign_key :notifications, :follows, column: :following_by_id
    add_reference :notifications, :follower_by, index: true
    add_foreign_key :notifications, :follows, column: :follower_by_id
  end
end
