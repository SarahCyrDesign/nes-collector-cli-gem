require 'pry'

class Game
  attr_accessor :name, :loose_price, :cib_price, :new_price

  @@all = []

  def self.new_from_file(doc)
   if doc.css("td.title").text != ""
   self.new(
     doc.css("td.title").text.strip,
     doc.css("td.price.numeric.used_price").text,
     doc.css("td.price.numeric.cib_price").text,
     doc.css("td.price.numeric.new_price").text
   )
  end
end

  def initialize(name = nil, loose_price = nil, cib_price = nil, new_price = nil)
    @name = name
    @loose_price = loose_price
    @cib_price = cib_price
    @new_price = new_price
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find(id)
   self.all[id-1]
   end
  end

#scraping data saved here
# game.name = doc.css("td.title").text
# game.loose_price = doc.css("td.price.numeric.used_price").text
# game.cib_price = doc.css("td.price.numeric.cib_price").text
# game.new_price = doc.css("td.price.numeric.new_price").text
