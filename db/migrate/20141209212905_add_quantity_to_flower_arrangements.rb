class AddQuantityToFlowerArrangements < ActiveRecord::Migration
  def change
    add_column :flower_arrangements, :quantity, :integer
  end
end
