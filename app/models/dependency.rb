class Dependency < ApplicationRecord
	has_many :themes
	has_many :codes
	belongs_to :category
end
