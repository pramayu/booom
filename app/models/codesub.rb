class Codesub < ApplicationRecord
  belongs_to :subcategory
  has_many :codes
end
