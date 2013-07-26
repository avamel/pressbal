class News < ActiveRecord::Base

  scope :published, -> {where(published: true)}

end
