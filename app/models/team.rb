class Team < ApplicationRecord
  has_many :users
  has_many :messagereviewers
  has_many :themes
  has_many :codes
  has_many :graphics
  has_many :fonts
  has_many :t3ds
  has_many :videofxes
  has_many :courses
  has_many :notes
end
