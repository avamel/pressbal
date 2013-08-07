class AddMetaDescriptionToTour < ActiveRecord::Migration
  def change
    add_column :tours, :meta_description, :string
  end
end
