class Review < ApplicationRecord
  belongs_to :restaurant
  stars = [0, 1, 2, 3, 4, 5]
  validates :rating, presence: true, inclusion: { in: stars }, numericality: true
  validates :content, presence: true
end
