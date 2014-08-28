class Buyer < ActiveRecord::Base

  has_many :bikes

  def shops_without_favorite
    bike = Bike.find_by(brand: self.favorite_brand)
    shop = Shop.find_by(id: bike.shop_id)
    shops = Shop.where.not(id: shop.id)
    name = []
    shops.each do |shop_name|
      name.push(shop_name.name)
    end
    name
  end

end