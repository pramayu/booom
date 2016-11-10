class Tag < ApplicationRecord
	has_many :taggings
	has_many :themes, through: :taggings
	has_many :codes, through: :taggings
	has_many :graphics, through: :taggings
	has_many :t3ds, through: :taggings
	has_many :videofxes, through: :taggings
	has_many :fonts, through: :taggings
	has_many :courses, through: :taggings
end
