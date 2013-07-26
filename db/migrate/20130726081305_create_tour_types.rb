class CreateTourTypes < ActiveRecord::Migration
  def change
    create_table :tour_types do |t|
      t.references :type_of_tour, index: true
      t.references :tour, index: true

      t.timestamps
    end
  end
end
