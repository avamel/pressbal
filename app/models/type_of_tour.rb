class TypeOfTour < ActiveRecord::Base
  has_many :tour_types
  has_many :tours, through: :tour_types
  extend FriendlyId
  friendly_id :title, use: :slugged

  def should_generate_new_friendly_id?
    new_record? || slug.blank?
  end

  def normalize_friendly_id(text)
    text.to_slug.normalize! :transliterations => :russian
  end

end
