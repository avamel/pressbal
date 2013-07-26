class TourType < ActiveRecord::Base
  belongs_to :type_of_tour
  belongs_to :tour
end
