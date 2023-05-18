class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORIES = %w[chinese italian japanese french belgian]
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES, message: '%<category> is not a valid size' }
end
