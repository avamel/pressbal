class Visa < ActiveRecord::Base
  has_many :tour_visas
  has_many :tours, through: :tour_visas
  validates_presence_of :title, :overview
  validates_uniqueness_of :title
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]

  def normalize_friendly_id(text)
    text.to_slug.normalize! :transliterations => [:russian, :latin]
  end

end
