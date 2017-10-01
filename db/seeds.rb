# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

datafile = Rails.root + 'db/data.csv'

CSV.foreach(datafile, headers: true) do |row|
    Data.find({cards: row[0]}) do |hr|
        hr.cardID = row[0]	
        hr.cardNumber = row[1]	
        hr.setTotal	= row[2]
        hr.cardName	= row[3]
        hr.setName	= row[4]
        hr.cardType	= row[5]
        hr.powerTough = row[6]
        hr.castingCost = row[7]
        hr.cardText	= row[8]
        hr.artist = row[9]
        hr.rarity = row[10]
    end

end    


