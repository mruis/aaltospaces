# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




#ttalo = Building.create(name: '30 Tietotekniikka', lat: '60.186889', lng: '24.821714')
#Room.create(name: '30T1', code: 'C202', building_id: ttalo.id)

Space.create(name: 'Tietotekniikka', address: 'Konemiehentie 2', lat: 60.186889, lng: 24.821714)
Space.create(name: 'T1-sali', code: 'C202', building: 'Tietotekniikka', address: 'Konemiehentie 2', lat: 60.186889, lng: 24.821714)

Space.create(name: 'Sähkö- ja tietoliikennetekniikka', address: 'Otakaari 5', lat: 60.188975, lng: 24.830088)
Space.create(name: 'S1-sali', code: 'A102', building: 'Sähkö- ja tietoliikennetekniikka', address: 'Otakaari 5', lat: 60.188975, lng: 24.830088)

Space.create(name: 'Päärakennus', address: 'Otakaari 1', lat: 60.185921, lng: 24.827158)
Space.create(name: 'A-sali', code: 'Y202a', building: 'Päärakennus', address: 'Otakaari 1', lat: 60.185921, lng: 24.827158)