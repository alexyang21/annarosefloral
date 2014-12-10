class AddFlowerRefToFlowerItems < ActiveRecord::Migration
  def change
    add_reference :flower_items, :flower, index: true
  end
end
