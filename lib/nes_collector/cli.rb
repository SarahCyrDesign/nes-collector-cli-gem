class NesCollector::CLI

  def call
    #Scraper.scrape_page  LOGIC FOR LATER
    #Scraper.make_games  LOGIC FOR LATER
    #get_games LOGIC FOR LATER
    list_games
    menu
  end

  # def get_games
  #   @games = NesCollector::Game.all
  # end

  def list_games
    puts "Nintendo's NES Games:"
    puts <<-DOC
  1. Super Mario Bros 3
  2. Legend of Zelda
  DOC
  #    @games.each.with_index(1) do |game, index|
  #      puts "#{i}. #{name.title}"
  #    end
  #    puts "----------------------------"
  #  end
  end

  def menu
        puts "Enter the number of the game you want to see the values of"
        puts "type exit to quit"
        input = nil
      while input != "exit"
        input = gets.strip.downcase
     if input.to_i.between?(1, 15) #PLACEHOLDER for LOGIC
       puts "Game Title"
       puts "loose $10.50"
       puts "CIB $27.06"
       puts "New $200.00"
      elsif input == "list"
         list_games
      elsif input == "exit"
        puts "See you later for an update on the NES game market!"
        exit
      else
         puts "Please enter a valid number, 'list' or 'exit'"
      end
    end
  end

end
