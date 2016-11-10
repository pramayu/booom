class Toitem < ApplicationRecord
  has_many :maintoitems
  has_many :includes, through: :maintoitems
end
