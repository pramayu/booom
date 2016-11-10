class Review < ApplicationRecord
  belongs_to :user
  belongs_to :theme
  belongs_to :code
  belongs_to :course
  belongs_to :font
  belongs_to :t3d
  belongs_to :videofx
  belongs_to :graphic
end
