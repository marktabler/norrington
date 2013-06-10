# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u = User.create(name: "Luchtman", pincode: "100214")
u.update_attribute(:admin, true)
t = User.create(name: "Tabler", pincode: "2221222")

m = Machine.create(barcode: "0000")
l = License.create(name: "Norrington")
m.install(l)
