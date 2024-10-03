class Review < ApplicationRecord
  RATINGS = (0..5).to_a
  belongs_to :car # , dependent: :destroy

  validates :comment, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: RATINGS }
end
