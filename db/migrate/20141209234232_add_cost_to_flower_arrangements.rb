class AddCostToFlowerArrangements < ActiveRecord::Migration
  def change
    add_column :flower_arrangements, :cost, :decimal
  end
end
