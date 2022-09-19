class User < ApplicationRecord
  authenticates_with_sorcery!
  mount_uploader :avatar, AvatarUploader

  has_many :articles, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :likes_articles, through: :likes, source: :article

  has_many :comments, dependent: :destroy
  
  has_many :favorites, dependent: :destroy
  has_many :favorites_stores, through: :favorites, source: :store

  validates :email, uniqueness: true, presence: true
  validates :name, presence: true, length: { maximum: 255 }
  validates :password, presence: true
  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :reset_password_token, uniqueness: true, allow_nil: true

  enum role: { general: 0, admin: 1 }

  def own?(object)
    id == object.user_id
  end

  def like(article)
    likes_articles << article
  end

  def unlike(article)
    likes_articles.destroy(article)
  end

  def like?(article)
    likes_articles.include?(article)
  end

  def favorite(store)
    favorites_stores << store
  end

  def unfavorite(store)
    favorites_stores.destroy(store)
  end

  def favorite?(store)
    favorites_stores.include?(store)
  end
  
end