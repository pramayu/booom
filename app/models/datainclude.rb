class Datainclude < ApplicationRecord
	belongs_to :include
	belongs_to :theme
	belongs_to :code
	belongs_to :graphic
	belongs_to :t3d
	belongs_to :videofx
	belongs_to :font
end
