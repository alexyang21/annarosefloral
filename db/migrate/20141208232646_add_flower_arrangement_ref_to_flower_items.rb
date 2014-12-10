class AddFlowerArrangementRefToFlowerItems < ActiveRecord::Migration
  def change
    add_reference :flower_items, :flower_arrangement, index: true
  end
end
