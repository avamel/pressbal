class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :title, null: false
      t.text :preview
      t.text :overview
      t.decimal :price
      t.boolean :published, default: false
      t.boolean :active, default: false

      t.timestamps
    end
  end
end
