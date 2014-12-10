class Event < ActiveRecord::Base
  has_many :flower_arrangements
  has_many :rental_items
  
  validates :name, presence: true
end
