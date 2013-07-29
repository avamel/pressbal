class CreateTourImages < ActiveRecord::Migration
  def change
    create_table :tour_images do |t|
      t.attachment :image
      t.references :tour, index: true
      t.boolean :active

      t.timestamps
    end
  end
end
