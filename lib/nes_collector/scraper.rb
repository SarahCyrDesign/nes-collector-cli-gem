require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_page
  doc = Nokogiri::HTML(open("https://www.pricecharting.com/console/nes"))
  end

   def self.make_games

     doc = self.scrape_page
     doc.css("td").each do |game|
       game.name = doc.css("td.title").text
       game.loose_price = doc.css("td.price.numeric.used_price").text
       game.cib_price = doc.css("td.price.numeric.cib_price").text
       game.new_price = doc.css("td.price.numeric.new_price").text
     end
   end

end
Scraper.scrape_page
Scraper.make_games
