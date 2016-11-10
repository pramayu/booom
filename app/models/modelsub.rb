class Modelsub < ApplicationRecord
  belongs_to :subcategory
  has_many :t3ds
end
