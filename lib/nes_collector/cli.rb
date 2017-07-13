class CLI

  def call
    Scraper.new.make_games
    menu
  end


  def menu
    puts "Welcome to the NES Collector!"
    puts "---------------------------------"
    puts "Type 'list' to see the current NES Game List"
    puts "Enter the number of the game you want to see the values of"
    puts "Type 'exit' to quit"
    input = nil
      while input != "exit"
        input = gets.strip.downcase
        game = Game.find(input.to_i)

       if input.to_i.between?(1, Game.all.size)
         print_game_info(game)
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

  def list_games
  #   puts "Nintendo's NES Games:"
  #   puts <<-DOC
  # 1. Super Mario Bros 3
  # 2. Legend of Zelda
  # DOC

  Game.all.each.with_index(1) do |game, index|
    puts "#{index}. #{game}"
  end
end


  def print_game_info(game)
    puts "---------------------------------"
    puts "name:         #{game.name}"
    puts "Loose Price:  #{game.loose_price}"
    puts "In Box Price: #{game.cib_price}"
    puts "New Price:    #{game.new_price}"
    puts "---------------------------------"
  end
end
