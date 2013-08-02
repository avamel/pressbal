class TourImage < ActiveRecord::Base
  belongs_to :tour
  convert_options_prefix = "-background transparent -compose Copy -gravity center -extent"
  has_attached_file :image, styles: { big: "282x272^", medium: "282x178^",small: "90x60^", thumb: "100x100>" },
                    :convert_options => { :medium => "#{convert_options_prefix} 281x178",
                                          :big => "#{convert_options_prefix} 282x272",
                                          :small => "#{convert_options_prefix} 90x60"}

  scope :general, -> {where(:active => true).last}

  after_save :last_active, if: -> image { image.active }

  private
  def last_active
    self.class.where(tour_id: tour_id).where('id != ?', id).update_all(active: false)
  end
end


