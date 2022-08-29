class Feature < ApplicationRecord
  has_many :store_features
  has_many :stores, through: :store_features
end
