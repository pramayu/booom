class Aeplugin < ApplicationRecord
	has_many :vidplugs
	has_many :videofxes, through: :vidplugs
end
