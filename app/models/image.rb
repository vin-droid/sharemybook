class Image < ApplicationRecord
	  belogs_to :imageable, polymorphic: true
	  mount_uploader :image, ImageUploader
end
