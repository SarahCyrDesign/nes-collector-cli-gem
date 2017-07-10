require 'pry'

class NesCollector::Game
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
end
