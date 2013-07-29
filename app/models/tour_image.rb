class TourImage < ActiveRecord::Base
  belongs_to :tour
  has_attached_file :image, styles: { big: "255x160>", medium: "186x80>", thumb: "100x100>" }

  scope :general, -> {where(:active => true).last}

  after_save :last_active, if: -> image { image.active }

  private
  def last_active
    self.class.where(tour_id: tour_id).where('id != ?', id).update_all(active: false)
  end
end
