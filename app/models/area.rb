class Area < ApplicationRecord
  has_many :stores, dependent: :destroy
end