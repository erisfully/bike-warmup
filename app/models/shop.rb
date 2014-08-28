class Shop < ActiveRecord::Base
  has_many :bikes

  def bike_names
    names = []
    Bike.where(shop_id: self.id).find_each do |bike|
      names.push(bike.name)
    end
    names
  end

  def buyers
    arry = []
    names = []
    Bike.where(shop_id: self.id).find_each do |bike|
    id = bike.buyer_id
    buyers = Buyer.find_by(id: id)
    arry.push(buyers)
    arry.each do |buyer|
      names.push(buyer.first_name).uniq!
    end

    end
    names
  end

end