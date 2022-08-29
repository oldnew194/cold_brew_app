class Article < ApplicationRecord
  mount_uploader :article_image, ArticleImageUploader
  belongs_to :user
  belongs_to :store
  has_many :article_coffees
  has_many :coffees, through: :article_coffees, source: :coffee

  validates :title, presence: true,  length: { maximum: 255 }
  validates :body, presence: true, length: { maximum: 65_535 }
end
