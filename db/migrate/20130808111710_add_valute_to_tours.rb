class AddValuteToTours < ActiveRecord::Migration
  def change
    add_column :tours, :currency, :string
  end
end
