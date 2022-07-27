class Article < ApplicationRecord
  belongs_to :user

  validates :title, presence: true,  lenngth: { maximum: 255 }
  validates :body, presence: true, lenngth: { maximum: 65_535 }
end
