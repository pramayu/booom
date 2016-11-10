class Videm < ApplicationRecord
  belongs_to :videofx
  mount_uploader :trailer, VidemUploader
end
