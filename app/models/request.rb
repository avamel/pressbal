class Request < ActiveRecord::Base
  validates_presence_of :name, :notation, :email, :phone
  validate :email_validation, :phone_validation
  def email_validation
    errors.add(:email, "введен некорректно") unless self.email =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  end

  def phone_validation
    errors.add(:phone, "веден некорректно") unless self.phone =~ /[+]\d+/
  end
end
