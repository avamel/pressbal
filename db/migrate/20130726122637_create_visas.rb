class CreateVisas < ActiveRecord::Migration
  def change
    create_table :visas do |t|
      t.string :title
      t.text :overview

      t.timestamps
    end
  end
end
