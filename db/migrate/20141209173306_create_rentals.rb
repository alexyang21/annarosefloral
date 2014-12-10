class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.string :name
      t.decimal :cost

      t.timestamps
    end
  end
end
