class Song < ApplicationRecord
  def self.order_by_name
  order(:music_genre)
  end
  belongs_to :artist, dependent: :destroy

end
