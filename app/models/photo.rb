class Photo < ApplicationRecord
  belongs_to :song
  mount_uploader :image, ImageUploader
end
