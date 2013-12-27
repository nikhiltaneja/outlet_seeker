# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

CoffeeShop.delete_all

c1 = CoffeeShop.create(
  name: "Octane",
  address: "1009 Marietta St NW",
  city: "Atlanta",
  state: "GA",
  outlets: 10
  )

c2 = CoffeeShop.create(
  name: "Dancing Goats",
  address: "419 W Ponce De Leon Ave",
  city: "Decatur",
  state: "GA",
  outlets: 6
  )

c3 = CoffeeShop.create(
  name: "Inman Perk",
  address: "240 N Highland Ave",
  city: "Atlanta",
  state: "GA",
  outlets: 8
  )


