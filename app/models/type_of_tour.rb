class TypeOfTour < ActiveRecord::Base
  has_many :tour_types
  has_many :tours, through: :tour_types
end
