class Bike < ActiveRecord::Base

  belongs_to :shop
  belongs_to :buyer

  def favorited_by
    buyer = Buyer.find_by(favorite_brand: self.brand)
    "#{buyer.first_name}" + " #{buyer.last_name}"
  end
end