class AddEventIdToFlowerArrangements < ActiveRecord::Migration
  def change
    add_reference :flower_arrangements, :event, index: true
  end
end
