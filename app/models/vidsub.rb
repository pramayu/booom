class Vidsub < ApplicationRecord
  belongs_to :subcategory
  has_many :videofxes
end
