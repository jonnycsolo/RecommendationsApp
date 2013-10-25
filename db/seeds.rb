# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Item.destroy_all

# items = Item.all
# items.each do |i|
#   i.destroy
# end

Item.destroy_all

i = Item.new
i.title = "United Center"
i.description = "Where the Hawks and Bulls play"
i.save

i = Item.new
i.title = "The Bean"
i.description = "Crazy reflections"
i.save


