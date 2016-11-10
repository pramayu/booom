class Tagging < ApplicationRecord
	belongs_to :tag
	belongs_to :theme
	belongs_to :code
	belongs_to :graphic
	belongs_to :t3d
	belongs_to :videofx
	belongs_to :font
	belongs_to :course
end
