
class Scraper

  def self.scrape_page
    doc = Nokogiri::HTML(open("https://www.pricecharting.com/console/nes"))
  end

  def self.scrape_table
    self.scrape_page.css("td")
  end

   def self.make_games
     self.scrape_table.each do |doc|
       Game.new_from_file(doc)
     end
   end
end


Scraper.scrape_page
Scraper.scrape_table
Scraper.make_games
