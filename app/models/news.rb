class News < ActiveRecord::Base
  validates_presence_of :title, :content

  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]

  scope :published, -> {where(published: true)}

  def should_generate_new_friendly_id?
    new_record? || slug.blank?
  end

  def normalize_friendly_id(text)
    text.to_slug.normalize! :transliterations => :russian
  end

end
