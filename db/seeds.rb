# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




puts 'Creating stocks...'

stock_attributes = [
 {
    name: 'B2W DIGITAL',
    price: 40,

},
 {
    name: 'BATTISTELLA',
    price: 20,

},
 {
    name: 'ABC BRASIL',
    price: 80,


},
 {
    name: 'KARSTEN',
    price: 100,

},
 {
    name: 'KLABIN S/A',
    price: 80,

},
 {
    name: 'KROTON',
    price: 40,

},
 {
    name: 'ADVANCED-DH',
    price:60,

},
 {
    name: 'AFLUENT T',
    price: 25,

},
 {
    name: 'ALGAR TELEC',
    price: 45,

},
 {
    name: 'ALPARGATAS',
    price: 35,

},
 {
    name: 'AREZZO CO',
    price: 75,

},
 {
    name: 'AMBEV S/A',
    price: 90,

},
 {
    name: 'CCR SA',
    price: 75,

},
 {
    name: 'ELETROBRAS',
    price: 23,

},
 {
    name: 'CELESC',
    price: 77,

},
 {
    name: 'SABESP',
    price: 33,

},
 {
    name: 'CIELO',
    price: 36,

},
 {
    name: 'GRUAIRPORT',
    price: 22,

},
 {
    name: 'ECOVIAS',
    price: 66,

},
 {
    name: 'TENDA',
    price: 26,

},
 {
    name: 'FLEURY',
    price: 87,

},
 {
    name: 'PORTOBELLO',
    price: 81,

},
 {
    name: 'PETROBRAS',
    price: 20,

},
 {
    name: 'RAIADROGASIL',
    price: 71,

},
 {
    name: 'RAIZEN',
    price: 86,

},
 {
    name: 'LE LIS BLANC',
    price: 27,

},
 {
    name: 'AMBEV S/A',
    price: 90,

},
 {
    name: 'VALE',
    price: 37,

},
 {
    name: 'VIAVAREJO',
    price: 93,

},
 {
    name: 'VULCABRAS',
    price: 33,

}]


Stock.create!(stock_attributes)

puts "Created #{Stock.count} stocks"
