class CreateFlowerArrangements < ActiveRecord::Migration
  def change
    create_table :flower_arrangements do |t|
      t.string :name
      t.string :category

      t.timestamps
    end
  end
end
