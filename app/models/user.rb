class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :articles, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorites_stores, through: :favorites, source: :store

  validates :email, uniqueness: true, presence: true
  validates :name, presence: true, length: { maximum: 255 }
  validates :password, presence: true
  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }

  def own?(object)
    id == object.user_id
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