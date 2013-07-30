class AddManagerToTour < ActiveRecord::Migration
  def change
    add_reference :tours, :manager, index: true
  end
end
