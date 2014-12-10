class RentalItem < ActiveRecord::Base
  belongs_to :event
  belongs_to :rental
  
  validates :quantity, presence: true
  validates :quantity, numericality: { greater_than: 0 }
end
