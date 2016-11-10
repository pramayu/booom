class Screenshot < ApplicationRecord
	belongs_to :theme
	belongs_to :code
	belongs_to :graphic
	belongs_to :t3d
	belongs_to :videofx
	belongs_to :font
	mount_uploader :screenshot, ScreenshotUploader
end
