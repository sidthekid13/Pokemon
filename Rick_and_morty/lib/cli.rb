class CLI

    def run
        puts "Welcome to the Pokemon Database!"
        puts "Please select a Pokemon to learn more about it!"
        API.create_characters
        list_characters
        menu
    end

    # def greeting
    #     puts "Hello! Welcome to the Rick and Morty Character Finder!"
    #     puts "Below is a list of all of the characters from the TV show, Rick and Morty! Input one of the character's names to learn more about them!"

    # end

    def list_characters    
        Character.all.each.with_index(1) do | character, i |        
            puts "#{i}. #{character.name}"   
            # binding.pry
        end  
    end

    def menu
        puts "Please select a number to view a Pokemon's details."
        input = gets.chomp
        if !input.to_i.between?(1, Character.all.count)
            puts "Character not found. Please select a different character!"
            list_characters
            menu
        else
            character = Character.all[input.to_i-1]
            print_details(character)
        end
    end

    def print_details(character)
        API.character_details(character)
        # binding.pry
        puts "Here is the pokedex page for #{character.name}:"
        puts "Name: #{character.name}"
        puts "Ability: #{character.abilities[0][:ability][:name]}"
        # puts "Game Appearances: #{character.game_indices[0][:game_index]}"
        puts "Would you like to select another Pokemon?"
        input = gets.chomp
        if input == "yes"
            menu
        else input == "no"
            puts "See ya later!"
            exit
        end
    end
    

end

