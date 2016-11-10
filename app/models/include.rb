class Include < ApplicationRecord
  has_many :dataincludes
  has_many :themes, through: :dataincludes
  has_many :codes, through: :dataincludes
  has_many :graphics, through: :dataincludes
  has_many :t3ds, through: :dataincludes
  has_many :videofxes, through: :dataincludes
  has_many :fonts, through: :dataincludes
  has_many :maintoitems, dependent: :destroy
  has_many :toitems, through: :maintoitems
end
