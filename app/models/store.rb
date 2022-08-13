class Store < ApplicationRecord
  mount_uploader :store_image, StoreImageUploader
  belongs_to :area
  has_many :articles, dependent: :destroy
  has_many :comments

  validates :name, presence: true, length: { maximum: 255 }
  validates :address, length: { maximum: 255 }
  validates :tel, length: { maximum: 255 }
  validates :closing_day, length: { maximum: 255 }
  validates :opening_hours, length: { maximum: 255 }
  validates :closing_hours, length: { maximum: 255 }
end
