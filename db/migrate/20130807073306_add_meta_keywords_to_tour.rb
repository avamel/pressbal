class AddMetaKeywordsToTour < ActiveRecord::Migration
  def change
    add_column :tours, :meta_keywords, :string
  end
end
