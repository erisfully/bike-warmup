class Shop < ActiveRecord::Base
  has_many :bikes

  def bike_names
    names = []
    Bike.where(shop_id: self.id).find_each do |bike|
      names.push(bike.name)
    end
    names
  end

end