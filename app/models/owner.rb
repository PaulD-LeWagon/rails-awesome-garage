class Owner < ApplicationRecord
  has_many :cars
  # has_many :favourites, through: :cars

  validates_associated :cars
  # validates_associated :favourites
  validates :nickname, presence: true, uniqueness: true, length: { minimum: 3 }
end
