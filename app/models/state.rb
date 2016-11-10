class State < ApplicationRecord
  belongs_to :country
  has_many :user
  has_many :vacancies
end
