class Country < ActiveRecord::Base
  has_many :country_tours
  has_many :tours, through: :country_tours
  convert_options_prefix = "-background transparent -compose Copy -gravity center -extent"
  has_attached_file :flag, styles: { small: "24x16^" },
                    :convert_options => { :small => "#{convert_options_prefix} 24x16"}
end
