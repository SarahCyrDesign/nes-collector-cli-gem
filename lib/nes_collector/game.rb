require 'pry'

class Game
  attr_accessor :name, :loose_price, :cib_price, :new_price

  @@all = []

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

   def self.avg_new_price
     total = 0
     Game.all.each do |game|
       total += game.new_price.gsub("$", "").to_f
     end
     total / Game.all.length
   end
  end
  # add all numbers and divide by length
