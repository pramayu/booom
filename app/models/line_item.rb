class LineItem < ApplicationRecord
  belongs_to :cart
  belongs_to :theme
  belongs_to :code
  belongs_to :font
  belongs_to :course
  belongs_to :graphic
  belongs_to :t3d
  belongs_to :videofx
  has_many :notifications, dependent: :destroy

  def full_price
  	unit_price * 1
  end
end
