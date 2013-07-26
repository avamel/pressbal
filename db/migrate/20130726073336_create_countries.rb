class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :title, null: false
      t.text :overview

      t.timestamps
    end
  end
end
