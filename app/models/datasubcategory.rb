class Datasubcategory < ApplicationRecord
	belongs_to :subcategory
	belongs_to :theme
	belongs_to :code
	belongs_to :graphic
	belongs_to :t3d
	belongs_to :videofx
	belongs_to :course
end