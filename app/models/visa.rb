class Visa < ActiveRecord::Base
  has_many :tour_visas
  has_many :tours, through: :tour_visas
end
