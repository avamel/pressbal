class StaticBlock < ActiveRecord::Base
  scope :home, ->{find_by_block_key("home")}
  scope :about_as, ->{find_by_block_key("about_as")}
  scope :for_clients, ->{find_by_block_key("for_clients")}
  scope :for_agency, ->{find_by_block_key("for_agency")}
  scope :contacts, ->{find_by_block_key("contacts")}
  scope :for_tourists, ->{find_by_block_key("for_tourists")}
end
