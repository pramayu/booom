class Freepi < ApplicationRecord
  belongs_to :course
  mount_uploader :cacaca, CacacaUploader
end
