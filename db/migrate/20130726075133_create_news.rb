class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title, null: false
      t.text :content
      t.boolean :published, default: false

      t.timestamps
    end
  end
end
