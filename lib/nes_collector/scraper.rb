require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_page
    doc = Nokogiri::HTML(open("https://www.pricecharting.com/console/nes"))
    name = doc.css("td.title").first.text #Super Mario 3
    doc.css("td.price.numeric.used_price").first.text #$10.50
    doc.css("td.price.numeric.cib_price").first.text #$27.06
    doc.css("td.price.numeric.new_price").first.text #$200.00
  # binding.pry
  end

end

Scraper.scrape_page
