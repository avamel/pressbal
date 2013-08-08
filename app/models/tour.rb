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

  validates_presence_of :title, :overview, :price, :preview, :countries, :type_of_tours, :tour_images
  validates_uniqueness_of :title

  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]

  scope :published, -> {where(published: true)}
  scope :active, -> {where(:active => true).last}
  scope :get_random, -> { where(:id => pluck(:id).sort_by { rand }.slice(0, 4))}

  after_save :last_active, if: -> tour {tour.active}
  after_save :always_have_one_active
  after_destroy :always_have_one_active, if: -> tour {tour.active}

  def should_generate_new_friendly_id?
    new_record? || slug.blank?
  end

  def normalize_friendly_id(text)
    text.to_slug.normalize! :transliterations => :russian
  end

  private
  def always_have_one_active
    if self.class.where(active: true).blank?
      self.class.first.update(active: true)
    end
  end

  def last_active
    self.class.where('id != ?', id).update_all(active: false)
  end

end
