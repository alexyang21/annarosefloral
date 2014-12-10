class AddEventIdToRentalItems < ActiveRecord::Migration
  def change
    add_reference :rental_items, :event, index: true
  end
end
