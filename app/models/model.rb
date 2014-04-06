class Model < ActiveRecord::Base
  belongs_to :brand
  has_many :cars
  
  validates_presence_of :name, :brand_id
end
