class Car < ApplicationRecord
  belongs_to :owner
  has_one :favourite, dependent: :destroy
  has_many :reviews, dependent: :destroy

  # validates_presence_of :owner
  # validates_associated :reviews
  # validates_associated :favourites

  validates :brand, presence: true
  validates :model, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
  validates :fuel, presence: true
end
