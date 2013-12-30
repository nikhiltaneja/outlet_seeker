class CoffeeShop < ActiveRecord::Base
  has_many :comments
  geocoded_by :location
  after_validation :geocode

  def location
    [address, city, state].join(", ")
  end
end
