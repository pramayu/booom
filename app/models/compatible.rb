class Compatible < ApplicationRecord
	# themes
	has_many :datacompatibles
	has_many :themes, through: :datacompatibles
	has_many :codes, through: :datacompatibles
end
