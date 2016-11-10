class Browser < ApplicationRecord
	has_many :databrowsers
	has_many :themes, through: :databrowsers
	has_many :codes, through: :databrowsers
end
