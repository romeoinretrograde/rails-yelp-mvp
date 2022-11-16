class Restaurant < ApplicationRecord
  has_many :reviews
  validates :category,
            presence: true,
            inclusion: { in: %w(chinese italian japanese french belgian), message: '%{value} is not a valid category' }
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates_associated :reviews
end
