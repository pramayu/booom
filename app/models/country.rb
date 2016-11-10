class Country < ApplicationRecord
  has_many :states
  has_many :users
  has_many :vacancies
end
