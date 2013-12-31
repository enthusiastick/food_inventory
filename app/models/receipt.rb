class Receipt < ActiveRecord::Base
  validates_presence_of :description, :quantity, :food_id
  belongs_to :food
end
