class Photo < ApplicationRecord
  belongs_to :song
  mount_uploader :Photo, ImageUploader
end
