class Coffee < ApplicationRecord
  has_many :article_coffees
  has_many :articles, through: :article_coffees
end
