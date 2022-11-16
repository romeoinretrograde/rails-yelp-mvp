class Review < ApplicationRecord
  belongs_to :restaurant
  validates :restaurant_id, presence: true
  validates :content, presence: true
  validates :rating,
            presence: true,
            numericality: { only_integer: true },
            inclusion: { in: (0..5), message: '%{value} is not a rating between 0 and 5' }
end
