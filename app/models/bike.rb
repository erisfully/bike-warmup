class Bike < ActiveRecord::Base

  belongs_to :shop
  belongs_to :buyer
end