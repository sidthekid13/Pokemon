class Character
@@all = []

attr_accessor :name, :url, :abilities

    def initialize(pokemon)
        self.name = pokemon[:name]
        self.url = pokemon[:url]
        @@all << self
    end

    def self.all
        @@all
    end
# binding.pry
end

