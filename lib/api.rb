

class RickAndMorty 

response = RestClient.get("https://rickandmortyapi.com/api/character/")

characters = JSON.parse(response.body, symbolize_names:true)
character_array = characters[:results]
binding.pry
end



