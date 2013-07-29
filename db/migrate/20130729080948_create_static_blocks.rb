class CreateStaticBlocks < ActiveRecord::Migration
  def change
    create_table :static_blocks do |t|
      t.string :title
      t.text :content
      t.string :block_key

      t.timestamps
    end
  end
end
