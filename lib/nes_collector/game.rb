class Game
  attr_accessor :name, :loose_price, :cib_price, :new_price

  @@all = []

  def self.all
    @@all
  end

  def save
  @@all << self
  end

end
