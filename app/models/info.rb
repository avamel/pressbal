class Info < ActiveRecord::Base
  validates_presence_of :phone1, :phone2, :phone_cod1, :phone_cod2, :address, :address_link
end
