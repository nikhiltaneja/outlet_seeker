class CoffeeShop < ActiveRecord::Base
  has_many :comments

  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true

  geocoded_by :location
  after_validation :geocode

  def location
    [address, city, state].join(", ")
  end
end
