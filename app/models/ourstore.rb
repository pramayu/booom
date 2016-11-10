class Ourstore < ApplicationRecord
	belongs_to :user
	mount_uploader :header, HeaderUploader
end
