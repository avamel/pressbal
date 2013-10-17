class Country < ActiveRecord::Base
  has_many :country_tours
  has_many :tours, through: :country_tours
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]
  convert_options_prefix = '-background transparent -compose Copy -gravity center -extent'
  has_attached_file :flag, styles: { small: "24x24^" },
                    :convert_options => { :small => "#{convert_options_prefix} 24x24"}
  validates_presence_of :title, :flag, :overview
  validates_uniqueness_of :title

  def normalize_friendly_id(text)
    text.to_slug.normalize! :transliterations => [:russian, :latin]
  end

end
