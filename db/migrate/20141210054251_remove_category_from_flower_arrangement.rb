class RemoveCategoryFromFlowerArrangement < ActiveRecord::Migration
  def change
    remove_column :flower_arrangements, :category, :string
  end
end
