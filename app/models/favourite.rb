class Favourite < ApplicationRecord
  belongs_to :car, optional: true
end
