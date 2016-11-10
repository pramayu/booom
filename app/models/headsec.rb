class Headsec < ApplicationRecord
  
  belongs_to :course
  has_many :lectures, dependent: :destroy
end
