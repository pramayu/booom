class Akusuka < ApplicationRecord
  belongs_to :user
  has_many :diasukas
  has_many :themes, through: :diasukas
  has_many :codes, through: :diasukas
  has_many :graphics, through: :diasukas
  has_many :t3ds, through: :diasukas
  has_many :fonts, through: :diasukas
  has_many :courses, through: :diasukas
  has_many :videofxes, through: :diasukas
end
