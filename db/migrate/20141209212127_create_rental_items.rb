class CreateRentalItems < ActiveRecord::Migration
  def change
    create_table :rental_items do |t|
      t.integer :quantity
      t.references :rental, index: true

      t.timestamps
    end
  end
end
