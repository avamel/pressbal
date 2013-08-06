class TourImage < ActiveRecord::Base
  belongs_to :tour
  convert_options_prefix = "-background transparent -compose Copy -gravity center -extent"
  has_attached_file :image, styles: {wbig: "560x272^" ,big: "282x272^", medium: "282x178^",small: "90x60^", thumb: "100x100>" },
                    :convert_options => { :medium => "#{convert_options_prefix} 281x178",
                                          :big => "#{convert_options_prefix} 282x272",
                                          :small => "#{convert_options_prefix} 90x60",
                                          wbig: "#{convert_options_prefix} 560x272"}

  scope :general, -> {where(:active => true).last}


  after_save :last_active_image, if: -> image { image.active }
  after_save :always_have_one_active_image
  validates :image, presence: true

  private
  def always_have_one_active_image
    if self.class.where(tour_id: tour_id).where(active: true).blank?
      self.class.where(tour_id: tour_id).first.update(active: true)
    end
  end
  def last_active_image
    self.class.where(tour_id: tour_id).where('id != ?', id).update_all(active: false)
  end
end


