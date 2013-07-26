class CreateTypeOfTours < ActiveRecord::Migration
  def change
    create_table :type_of_tours do |t|
      t.string :title, null: false

      t.timestamps
    end
  end
end
