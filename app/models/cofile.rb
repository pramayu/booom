class Cofile < ApplicationRecord
  belongs_to :course
  mount_uploader :coke, CokeUploader
end
