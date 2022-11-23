class Store < ApplicationRecord
  mount_uploader :store_image, StoreImageUploader
  belongs_to :area
  has_many :articles, dependent: :destroy
  has_many :comments
  has_many :store_features, dependent: :destroy
  has_many :features, through: :store_features, source: :feature
  
  has_many :favorites, dependent: :destroy

  validates :name, presence: true, length: { maximum: 255 }
  validates :address, length: { maximum: 255 }
  validates :tel, length: { maximum: 255 }
  validates :closing_day, length: { maximum: 255 }
  validates :opening_hours, presence: true, length: { maximum: 255 }
  validates :closing_hours, presence: true, length: { maximum: 255 }

  geocoded_by :address2
  after_validation :geocode, latitude: :lat, longitude: :lng
end
