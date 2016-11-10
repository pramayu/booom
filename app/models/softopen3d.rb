class Softopen3d < ApplicationRecord
	has_many :canopens
	has_many :t3ds, through: :canopens
end
