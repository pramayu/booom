class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :notified_by, class_name: 'User'
  belongs_to :theme
  belongs_to :code
  belongs_to :graphic
  belongs_to :t3d
  belongs_to :videofx
  belongs_to :font
  belongs_to :course
  belongs_to :line_item
  validates :user_id, :notified_by_id, :notice_type, presence: true
end
