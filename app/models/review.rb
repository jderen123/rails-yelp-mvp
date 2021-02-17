class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, acceptance: {accept: (0..5) }, numericality: { only_integer: true }, presence: true
  validates :content, presence: true
end
