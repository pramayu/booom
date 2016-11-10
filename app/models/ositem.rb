class Ositem < ApplicationRecord
	has_many :dataositems
	has_many :t3ds, through: :dataositems
end
