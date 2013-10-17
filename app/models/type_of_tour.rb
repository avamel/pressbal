class TypeOfTour < ActiveRecord::Base
  has_many :tour_types
  has_many :tours, through: :tour_types
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]
  validates_presence_of :title
  validates_uniqueness_of :title

  def normalize_friendly_id(text)
    text.to_slug.normalize! :transliterations => [:russian, :latin]
  end

end
