class Manager < ActiveRecord::Base
  has_many :tours
  validates_presence_of :name, :phone, :email
  validates_uniqueness_of :name
end
