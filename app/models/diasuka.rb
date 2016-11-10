class Diasuka < ApplicationRecord
  belongs_to :akusuka
  belongs_to :theme
  belongs_to :code
  belongs_to :graphic
  belongs_to :t3d
  belongs_to :font
  belongs_to :course
  belongs_to :videofx
end
