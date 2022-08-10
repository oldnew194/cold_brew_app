class Store < ApplicationRecord
  mount_uploader :store_image, StoreImageUploader
  belongs_to :area

  validates :name,presence: true, length: { maximum: 255 }
end
