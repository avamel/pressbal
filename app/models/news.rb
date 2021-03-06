class News < ActiveRecord::Base
  validates_presence_of :title, :content
  validates_uniqueness_of :title

  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]

  default_scope order('created_at DESC')
  scope :published, -> { where(published: true) }

  def normalize_friendly_id(text)
    text.to_slug.normalize! :transliterations => [:russian, :latin]
  end

end
