
class Scraper

  def scrape_page
    doc = Nokogiri::HTML(open("https://www.pricecharting.com/console/nes"))
  end

  def scrape_table
    self.scrape_page.css("#games_table tr")
  end

  def make_games
    scrape_table.each do |doc|
      if doc.css("td.title").text != ""
        Game.new(
        doc.css("td.title").text.strip,
        doc.css("td.price.numeric.used_price").text,
        doc.css("td.price.numeric.cib_price").text,
        doc.css("td.price.numeric.new_price").text
        )
    end
   end
 end
end

  #  def make_games
  #    scrape_table.each do |doc|
  #      Game.new_from_file(doc)
  #    end
  #  end



# Scraper.scrape_page
# Scraper.scrape_table
# Scraper.make_games
