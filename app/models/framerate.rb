class Framerate < ApplicationRecord
	has_many :videorates
	has_many :videofxes, through: :videorates
end
