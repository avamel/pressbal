class Tour < ActiveRecord::Base
  belongs_to :manager
  has_many :country_tours
  has_many :countries, through: :country_tours
  has_many :tour_types
  has_many :type_of_tours, through: :tour_types
  has_many :tour_visas
  has_many :visas, through: :tour_visas
  has_many :orders
  has_many :tour_images, dependent: :destroy
  accepts_nested_attributes_for :tour_images, allow_destroy: true

  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]

  scope :published, -> {where(published: true)}
  scope :active, -> {where(:active => true).last}

  after_save :last_active, if: -> tour {tour.active}

  def should_generate_new_friendly_id?
    new_record? || slug.blank?
  end

  def normalize_friendly_id(text)
    text.to_slug.normalize! :transliterations => :russian
  end

  private

  def last_active
    self.class.where('id != ?', id).update_all(active: false)
  end

end
