class NesCollector::CLI

  def call
    list_games
    menu
  end

  def list_games
    puts "Nintendo's NES Games:"
    puts <<-DOC
  1. Super Mario Bros 3
  2. Legend of Zelda
  DOC
  end

  def menu
        puts "Enter the number of the game you want to see the values of"
        puts "type exit to quit"
        input = nil
      while input != "exit"
        input = gets.strip.downcase
     if input.to_i.between?(1, 15) #PLACEHOLDER for LOGIC
       puts "This game was chosen" #PLACEHOLDER for LOGIC
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
