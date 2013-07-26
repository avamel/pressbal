class CreateTourVisas < ActiveRecord::Migration
  def change
    create_table :tour_visas do |t|
      t.references :tour, index: true
      t.references :visa, index: true

      t.timestamps
    end
  end
end
