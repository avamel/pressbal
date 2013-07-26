class Country < ActiveRecord::Base
  has_many :country_tours
  has_many :tours, through: :country_tours
end
