class Allskill < ApplicationRecord
  belongs_to :skill
  belongs_to :user
  belongs_to :vacancy
end
