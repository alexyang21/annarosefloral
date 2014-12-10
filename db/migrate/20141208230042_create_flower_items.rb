class CreateFlowerItems < ActiveRecord::Migration
  def change
    create_table :flower_items do |t|
      t.integer :quantity

      t.timestamps
    end
  end
end
