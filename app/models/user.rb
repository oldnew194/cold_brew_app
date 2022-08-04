class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :articles, dependent: :destroy

  validates :email, uniqueness: true, presence: true
  validates :password, presence: true
  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  
end