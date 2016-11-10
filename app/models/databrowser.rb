class Databrowser < ApplicationRecord
	belongs_to :browser
	belongs_to :theme
	belongs_to :code
end
