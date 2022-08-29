class ArticleCoffee < ApplicationRecord
  belongs_to :article
  belongs_to :coffee
end
