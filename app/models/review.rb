class Review < ApplicationRecord
  belongs_to :restaurant
  RATINGS = 0..5
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true, in: RATINGS }
end
