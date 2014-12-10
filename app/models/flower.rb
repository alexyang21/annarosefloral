class Flower < ActiveRecord::Base
  has_many :flower_items
  has_many :flower_arrangements, through: :flower_items
  
  validates :name, :cost, presence: true
  validates :cost, numericality: { greater_than: 0 }
end
