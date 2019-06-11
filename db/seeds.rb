# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'
require 'nokogiri'
require 'faker'

# stock_attributes = []

# i = 0.2

# list_of_stocks = %w(
# ABEV3.SA
# B3SA3.SA
# BBDC3.SA
# BBDC4.SA
# BRAP4.SA
# BRKM5.SA
# BRFS3.SA
# CCRO3.SA
# CMIG4.SA
# CIEL3.SA
# CPLE6.SA
# PETR4.SA
# )

# list_of_images = %w(

# https://res.cloudinary.com/sailemarinho/image/upload/v1559935633/m4cd8g749wnse3zv48ss.png
# https://res.cloudinary.com/sailemarinho/image/upload/v1559935633/vaqijbkgcwe2qjg5eyek.png
# https://res.cloudinary.com/sailemarinho/image/upload/v1559935633/ngbzmdr6qghsn3fqdu36.png
# https://res.cloudinary.com/sailemarinho/image/upload/v1559935633/bqyoger3juvkkuexjt7f.png
# https://res.cloudinary.com/sailemarinho/image/upload/v1559935633/z3s4zmyjub5efyqoxwnj.png
# https://res.cloudinary.com/sailemarinho/image/upload/v1559935634/ijqlu4ktyqsjkday4f4j.png
# https://res.cloudinary.com/sailemarinho/image/upload/v1559935634/wuuh19eidjsvxokjpviy.png
# https://res.cloudinary.com/sailemarinho/image/upload/v1559935634/ehd3rgrfhe7rcknuloek.png
# https://res.cloudinary.com/sailemarinho/image/upload/v1559935634/dya4uynfww0hqimo0lnt.png
# https://res.cloudinary.com/sailemarinho/image/upload/v1559935634/xkc4twoysvyvd7leucxt.png
# https://res.cloudinary.com/sailemarinho/image/upload/v1559935634/x8u1xazpvnbbl6dluivr.png
# https://res.cloudinary.com/sailemarinho/image/upload/v1559935635/jiiwzjt9r97xoppgrz6v.png
# )

# list_of_stocks.each do |stock|
#   filepath = "https://br.financas.yahoo.com/quote/#{stock}?p=#{stock}"
#   # 1. We get the HTML page content
#   html_content = open(filepath).read
#   # 2. We build a Nokogiri document from this file
#   doc = Nokogiri::HTML(html_content)
#   # 3. We search for the correct elements containing the items' title in our HTML doc
#   current_value = doc.search('#quote-header-info > div:nth-child(3) div:nth-child(1) > span').text.strip
#   current_variation = doc.search('#quote-header-info > div:nth-child(3) div:nth-child(1) > :nth-child(2)').text.strip
#   current_fullname = doc.search('#quote-header-info > div:nth-child(2) div:nth-child(1) > h1').text.strip[11..-1]
#   # 4. For each item found, we extract its title and print it
#   stock_attributes << {name: stock, fullname: current_fullname ,price: current_value.gsub!(",",".").to_f, variation: /\((.*?)\)/.match(current_variation)[1], remote_photo_url: list_of_images[i]}
#   i += 1
# end

# puts 'Creating stocks...'

# Stock.create!(stock_attributes)

# puts "Created #{Stock.count} stocks"

 puts 'Creating users...'


 user_attributes = [
 {
   name: "Adriano Araujo",
   username: "freizao_",
   password: "123456",
   email: "adriano.araujo@stock.com",
   wallet: {},
   remote_photo_url: "https://res.cloudinary.com/sailemarinho/image/upload/v1560204765/udacd4e9bpg8awjy3ubm.jpg"
 },
  {
   name: "Caio Bastone",
   username: "cainho",
   password: "123456",
   email: "caio.bastone@stock.com",
   wallet: {},
   remote_photo_url: "https://res.cloudinary.com/sailemarinho/image/upload/v1560204765/x0ldfhfppr9jkobsv0ih.jpg"
 },
   {
   name: "Daniel Amarilho",
   username: "dani",
   password: "123456",
   email: "daniel.amarilho@stock.com",
   wallet: {},
   remote_photo_url: "https://res.cloudinary.com/sailemarinho/image/upload/v1560204765/p052mtk0h4jtblly5ay4.jpg"
 },
   {
   name: "Daniel Silva",
   username: "carioca",
   password: "123456",
   email: "daniel.silva@stock.com",
   wallet: {},
   remote_photo_url: "https://res.cloudinary.com/sailemarinho/image/upload/v1560204764/rfvzrqjdizposgpw79kz.jpg"
 },
   {
   name: "Diego Pisani",
   username: "diego",
   password: "123456",
   email: "diego.pisani@stock.com",
   wallet: {},
   remote_photo_url: "https://res.cloudinary.com/sailemarinho/image/upload/v1560204764/cyfgyyye9kxczvzzynw5.jpg"
 },
   {
   name: "Gabriel Gil",
   username: "gabriel",
   password: "123456",
   email: "gabriel.gil@stock.com",
   wallet: {},
   remote_photo_url: "https://res.cloudinary.com/sailemarinho/image/upload/v1560204764/eybhdqm9ovdryluv16zp.jpg"
 },
   {
   name: "João Apel",
   username: "jão!",
   password: "123456",
   email: "joao.apel@stock.com",
   wallet: {},
   remote_photo_url: "https://res.cloudinary.com/sailemarinho/image/upload/v1560204764/cq30gpgqk5rcxrxno5il.jpg"
 },
   {
   name: "Kaynan Silva",
   username: "kaynan",
   password: "123456",
   email: "kaynan.silva@stock.com",
   wallet: {},
   remote_photo_url: "https://res.cloudinary.com/sailemarinho/image/upload/v1560204764/dpmsizluccouvystt78l.jpg"
 },
   {
   name: "Lucas Souza",
   username: "magrao",
   password: "123456",
   email: "lucas.souza@stock.com",
   wallet: {},
   remote_photo_url: "https://res.cloudinary.com/sailemarinho/image/upload/v1560204764/ctxmqkbkjdyaoyjkjbei.jpg"
 },
   {
   name: "Marcelo Escobar",
   username: "escobar",
   password: "123456",
   email: "marcelo.escobar@stock.com",
   wallet: {},
   remote_photo_url: "https://res.cloudinary.com/sailemarinho/image/upload/v1560204764/vbp7v2bmay4gmn13lbv2.jpg"
 },
    {
   name: "Miucha Salge",
   username: "miucha",
   password: "123456",
   email: "miucha.salge@stock.com",
   wallet: {},
   remote_photo_url: "https://res.cloudinary.com/sailemarinho/image/upload/v1560204765/g39j5mou58k6gx9uz8bc.jpg"
 },
    {
   name: "Raphael Schmidt",
   username: "rapha",
   password: "123456",
   email: "raphael.schmidt@stock.com",
   wallet: {},
   remote_photo_url: "https://res.cloudinary.com/sailemarinho/image/upload/v1560204764/vuvophomdc88ctvxaovp.jpg"
 },
    {
   name: "Saile Ribeiro",
   username: "sailet",
   password: "123456",
   email: "saile.ribeiro@stock.com",
   wallet: {},
   remote_photo_url: "https://res.cloudinary.com/sailemarinho/image/upload/v1560204764/h1p0dwjhob5gtefshwln.jpg"
 },
    {
   name: "Thiago Zanette",
   username: "thiagao",
   password: "123456",
   email: "thiago.zanette@stock.com",
   wallet: {},
   remote_photo_url: "https://res.cloudinary.com/sailemarinho/image/upload/v1560204764/rvxcdanoidvhpprnizgq.jpg"
 },
    {
   name: "Ricardo Ribeiro",
   username: "ricardo",
   password: "123456",
   email: "ricardo.ribeiro@stock.com",
   wallet: {},
   remote_photo_url: "https://res.cloudinary.com/sailemarinho/image/upload/v1560204764/smbgwjb7xeoopi3mgl2h.jpg"
 },
]

User.create!(user_attributes)

puts "Created #{User.count} users"








# puts 'Creating users...'


# user_attributes = [
# {
#   name: Faker::Name.first_name,
#   username: Faker::Artist.name.downcase,
#   password: "password",
#   email: Faker::Internet.email,
#   wallet: {rand(1..10).to_s => rand(1..10)
#   remote_photo_url: ""
# },
# {
#   name: Faker::Name.first_name,
#   username: Faker::Artist.name.downcase,
#   password: "password",
#   email: Faker::Internet.email,
#   wallet: {rand(1..10).to_s => rand(1..10)
#   remote_photo_url: ""
# },
# {
#   name: Faker::Name.first_name,
#   username: Faker::Artist.name.downcase,
#   password: "password",
#   email: Faker::Internet.email,
#   wallet: {rand(1..10).to_s => rand(1..10)
#   remote_photo_url: ""
# },
# {
#   name: Faker::Name.first_name,
#   username: Faker::Artist.name.downcase,
#   password: "password",
#   email: Faker::Internet.email,
#   wallet: {rand(1..10).to_s => rand(1..10)
#   remote_photo_url: ""
# },
# {
#   name: Faker::Name.first_name,
#   username: Faker::Artist.name.downcase,
#   password: "password",
#   email: Faker::Internet.email,
#   wallet: {rand(1..10).to_s => rand(1..10)
#   remote_photo_url: ""
# },
# {
#   name: Faker::Name.first_name,
#   username: Faker::Artist.name.downcase,
#   password: "password",
#   email: Faker::Internet.email,
#   wallet: {rand(1..10).to_s => rand(1..10)
#   remote_photo_url: ""
# },
# {
#   name: Faker::Name.first_name,
#   username: Faker::Artist.name.downcase,
#   password: "password",
#   email: Faker::Internet.email,
#   wallet: {rand(1..10).to_s => rand(1..10)
#   remote_photo_url: ""
# },
# {
#   name: Faker::Name.first_name,
#   username: Faker::Artist.name.downcase,
#   password: "password",
#   email: Faker::Internet.email,
#   wallet: {rand(1..10).to_s => rand(1..10)
#   remote_photo_url: ""
# },

# ]


# User.create!(user_attributes)

# puts "Created #{User.count} users"








# list_of_stocks = %w(
# ABEV3.SA
# BTOW3.SA
# B3SA3.SA
# BBAS3.SA
# BBDC3.SA
# BBDC4.SA
# BRAP4.SA
# BRKM5.SA
# BRFS3.SA
# CCRO3.SA
# CMIG4.SA
# CIEL3.SA
# CPLE6.SA
# CSAN3.SA
# CPFE3.SA
# CSNA3.SA
# CYRE3.SA
# ECOR3.SA
# ENBR3.SA
# ELET3.SA
# ELET6.SA
# EMBR3.SA
# EGIE3.SA
# ESTC3.SA
# FIBR3.SA
# GGBR4.SA
# GOLL4.SA
# PCAR4.SA
# HYPE3.SA
# IGTA3.SA
# ITUB4.SA
# ITSA4.SA
# JBSS3.SA
# KLBN11.SA
# KROT3.SA
# RENT3.SA
# LAME4.SA
# LREN3.SA
# GOAU4.SA
# MRVE3.SA
# NATU3.SA
# PETR3.SA
# PETR4.SA
# RAIL3.SA
# SBSP3.SA
# SANB11.SA
# SMLE3.SA
# SUZB5.SA
# VIVT4.SA
# TIMP3.SA
# UGPA3.SA
# USIM5.SA
# VALE3.SA
# VVAR11.SA
# WEGE3.SA
# )

# ('.Trsdu(0.3s) .Fw(b) .Fz(36px) .Mb(-4px) .D(ib)')

# puts "What are you searching on Etsy?"
# article = gets.chomp

# # 1. We get the HTML page content thanks to open-uri
# html_content = open("https://www.etsy.com/search?q=#{article}").read
# # 2. We build a Nokogiri document from this file
# doc = Nokogiri::HTML(html_content)

# # 3. We search for the correct elements containing the items' title in our HTML doc
# doc.search('.v2-listing-card .v2-listing-card__info .text-body').each do |element|
#   # 4. For each item found, we extract its title and print it
#   puts element.text.strip
# end


# $('#atomic')
# <html id=​"atomic" class=​"chrome desktop JsEnabled layoutEnhance(TwoColumnLayout)​ CollapsibleUh onDemandFocusSupport hasScrolled scrollDown ShowNavrail" lang=​"pt-BR">​<head prefix=​"og:​ http:​/​/​ogp.me/​ns#">​…​</head>​<body cz-shortcut-listen=​"true">​…​</body>​</html>​
# $('.Trsdu(0.3s)')
# VM33994:1 Uncaught DOMException: Failed to execute '$' on 'CommandLineAPI': '.Trsdu(0.3s)' is not a valid selector.
#     at <anonymous>:1:1
# (anonymous) @ VM33994:1
# $('.trsdu(0.3s)')
# VM33999:1 Uncaught DOMException: Failed to execute '$' on 'CommandLineAPI': '.trsdu(0.3s)' is not a valid selector.
#     at <anonymous>:1:1
# (anonymous) @ VM33999:1
# $('#quote-market-notice')
# <div id=​"quote-market-notice" class=​"C($c-fuji-grey-j)​ D(b)​ Fz(12px)​ Fw(n)​ Mstart(0)​--mobpsm Mt(6px)​--mobpsm">​…​</div>​
# $('#quote-header-info > div:nth-child(3) div:nth-child(1) > span')
# <span class=​"Trsdu(0.3s)​ Fw(b)​ Fz(36px)​ Mb(-4px)​ D(ib)​">​26,36​</span>​
# $('#quote-header-info > div:nth-child(3) div:nth-child(1) > span').textContent
# "26,36"

# require 'open-uri'
# require 'json'
# require 'nokogiri'

# url = "https://api-v2.intrinio.com/securities/PETR4:BVMF/prices?api_key=Ojg3M2ZkOTE0MzUxZmVjNGM4MTYyZDI2YzdmN2EzZGFh"

# html_stocks = open(url).read

# html_call = Nokogiri::HTML(html_stocks)

# json = JSON.parse(html_call)



# p json["stock_prices"].first["close"]





# puts 'Creating stocks...'

# stock_attributes = [
#  {
#     name: 'B2W DIGITAL',
#     price: 40,

# },
#  {
#     name: 'BATTISTELLA',
#     price: 20,

# },
#  {
#     name: 'ABC BRASIL',
#     price: 80,


# },
#  {
#     name: 'KARSTEN',
#     price: 100,

# },
#  {
#     name: 'KLABIN S/A',
#     price: 80,

# },
#  {
#     name: 'KROTON',
#     price: 40,

# },
#  {
#     name: 'ADVANCED-DH',
#     price:60,

# },
#  {
#     name: 'AFLUENT T',
#     price: 25,

# },
#  {
#     name: 'ALGAR TELEC',
#     price: 45,

# },
#  {
#     name: 'ALPARGATAS',
#     price: 35,

# },
#  {
#     name: 'AREZZO CO',
#     price: 75,

# },
#  {
#     name: 'AMBEV S/A',
#     price: 90,

# },
#  {
#     name: 'CCR SA',
#     price: 75,

# },
#  {
#     name: 'ELETROBRAS',
#     price: 23,

# },
#  {
#     name: 'CELESC',
#     price: 77,

# },
#  {
#     name: 'SABESP',
#     price: 33,

# },
#  {
#     name: 'CIELO',
#     price: 36,

# },
#  {
#     name: 'GRUAIRPORT',
#     price: 22,

# },
#  {
#     name: 'ECOVIAS',
#     price: 66,

# },
#  {
#     name: 'TENDA',
#     price: 26,

# },
#  {
#     name: 'FLEURY',
#     price: 87,

# },
#  {
#     name: 'PORTOBELLO',
#     price: 81,

# },
#  {
#     name: 'PETROBRAS',
#     price: 20,

# },
#  {
#     name: 'RAIADROGASIL',
#     price: 71,

# },
#  {
#     name: 'RAIZEN',
#     price: 86,

# },
#  {
#     name: 'LE LIS BLANC',
#     price: 27,

# },
#  {
#     name: 'AMBEV S/A',
#     price: 90,

# },
#  {
#     name: 'VALE',
#     price: 37,

# },
#  {
#     name: 'VIAVAREJO',
#     price: 93,

# },
#  {
#     name: 'VULCABRAS',
#     price: 33,

# }]


# Stock.create!(stock_attributes)

# puts "Created #{Stock.count} stocks"
