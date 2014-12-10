class FlowerItem < ActiveRecord::Base
  belongs_to :flower_arrangement
  belongs_to :flower
  
  validates :quantity, :flower_arrangement, :flower, presence: true
  validates :quantity, numericality: { greater_than: 0 }
end
