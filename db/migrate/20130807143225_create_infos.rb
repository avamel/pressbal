class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :phone1
      t.string :phone_cod1
      t.string :phone2
      t.string :phone_cod2
      t.string :address
      t.string :address_link

      t.timestamps
    end
  end
end
