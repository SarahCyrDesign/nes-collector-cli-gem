# Specifications for the CLI Assessment

Specs:
- [x] Have a CLI for interfacing with the application
      - CLI class is in the lib/nes_collector/cli.rb file
      - CLI greets the user, asks for input, receives input and prints out data accordingly

- [x] Pull data from an external source
      - Scraper class in the lib/nes_collector/scraper.rb file
      - Pulls data utilizing Nokogiri and Open URI from www.pricecharting.com
      - Uses method scrape_table to scrape specific table rows with the content
      - Uses method make_games to iterate over table rows and pass data off to new Game class
        to instantiate new Game objects (lib/nes_collector/game.rb)

- [x] Implement both list and detail views
      - ClI class shows each game name by index. Index is as long as the @@all array of instantiated games
      - After user inputs an index number from the game list, the game will list:
        Name:
        Loose Price:
        In Box Price:
        New Price:
      - The user then has the choice to view the list again, input a number or exit the program
