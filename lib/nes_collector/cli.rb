class CLI

  def call
    Scraper.new.make_games
    menu
  end


  def menu
    puts "-----------------------------------------------------------"
    puts "************** Welcome to the NES Collector! **************"
    puts "-----------------------------------------------------------"
    puts "Enter 'list' to see the current NES Game List"
    puts "Enter 'exit' to quit"
    puts "-----------------------------------------------------------"
    input = nil
      while input != "exit"
        input = gets.strip.downcase
        game = Game.find(input.to_i)

       if input.to_i.between?(1, Game.all.size)
         print_game_info(game)
       elsif input == "list"
         list_games
         puts "-----------------------------------------------------------"
         puts "Enter the number of the game you want to see the values of"
         puts "-----------------------------------------------------------"
       elsif input == "exit"
         puts "-----------------------------------------------------------"
         puts "See you later for an update on the NES game market!"
         puts "-----------------------------------------------------------"
         exit
       else
         puts "Please enter a valid number, 'list' or 'exit'"
      end
    end
  end

  def list_games
    puts "The average of all the new price games is #{Game.avg_new_price}"
  Game.all.each.with_index(1) do |game, index|
    puts "#{index}. #{game.name}"
  end
end


  def print_game_info(game)
    puts "---------------------------------"
    puts "Name:         #{game.name}"
    puts "Loose Price:  #{game.loose_price}"
    puts "In Box Price: #{game.cib_price}"
    puts "New Price:    #{game.new_price}"
    puts "---------------------------------"
    puts "If you want to see more games enter a number or 'list'"
    puts "Enter 'exit' to quit"
  end
end
