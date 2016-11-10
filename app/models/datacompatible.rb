class Datacompatible < ApplicationRecord
	belongs_to :compatible
	belongs_to :theme
	belongs_to :code
end
