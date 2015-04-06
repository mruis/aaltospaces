# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


ttalo = Building.create(name: '30 Tietotekniikka', lat: '60.186889', lng: '24.821714')
Room.create(name: '30T1', code: 'C202', building_id: ttalo.id)
