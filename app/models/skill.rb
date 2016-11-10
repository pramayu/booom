class Skill < ApplicationRecord
	has_many :allskills
	has_many :users, through: :allskills
end
