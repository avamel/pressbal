class AddSlugToTypeOfTours < ActiveRecord::Migration
  def change
    add_column :type_of_tours, :slug, :string
    add_index :type_of_tours, :slug
  end
end
