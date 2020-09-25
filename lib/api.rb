class API

    def self.create_characters
        resp = RestClient.get("https://pokeapi.co/api/v2/pokemon")
        character_hash = JSON.parse(resp.body, symbolize_names:true)
        character_array = character_hash[:results]
        # binding.pry
        character_array.each do |pokemon| 
            # binding.pry 
            Character.new(pokemon)
        # binding.pry
        end
    end 

    def self.character_details(character)
            resp = RestClient.get(character.url)        
            char_hash = JSON.parse(resp.body, symbolize_names:true)
            character.abilities = char_hash[:abilities] 
            # binding.pry
            # character.game_indices = char_hash[:game_indices]       
    end
end




   # character_array.each do | person | 
        #     id = person[:id]
        #     name = person[:name]
        #     status = person[:status]
        #     species = person[:species]
        #     gender = person[:gender]
        #     origin = person[:origin]
        #     location = person[:location]