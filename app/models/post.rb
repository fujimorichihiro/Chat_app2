class Post < ApplicationRecord
  belongs_to :user

  attachment :content_image

  validates :content, presence: true

  geocoded_by :address
  after_validation :geocode
end
