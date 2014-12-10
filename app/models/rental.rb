class Rental < ActiveRecord::Base
  validates :name, :cost, presence: true
  validates :cost, numericality: { greater_than: 0 }
end
