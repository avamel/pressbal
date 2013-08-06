class Visa < ActiveRecord::Base
  has_many :tour_visas
  has_many :tours, through: :tour_visas
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]

  def should_generate_new_friendly_id?
    new_record? || slug.blank?
  end

  def normalize_friendly_id(text)
    text.to_slug.normalize! :transliterations => :russian
  end

end
