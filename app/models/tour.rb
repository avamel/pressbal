class Tour < ActiveRecord::Base
  has_many :country_tours
  has_many :countries, through: :country_tours
  has_many :tour_types
  has_many :type_of_tours, through: :tour_types
  has_many :tour_visas
  has_many :visas, through: :tour_visas

  scope :published, -> {where(published: true)}
end
