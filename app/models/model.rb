class Model < ActiveRecord::Base
  belongs_to :brand
  has_many :cars
end
