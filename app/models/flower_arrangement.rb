class FlowerArrangement < ActiveRecord::Base
  belongs_to :event
  has_many :flower_items
  has_many :flowers, through: :flower_items
  
  validates :name, :category, :quantity, presence: true
  validates :quantity, numericality: { greater_than: 0 }
end
