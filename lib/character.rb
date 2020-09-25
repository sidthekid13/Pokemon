class Character
@@all = []

attr_accessor :abilities
attr_reader :name, :url

    def initialize(pokemon)
        @name = pokemon[:name]
        @url = pokemon[:url]
        @@all << self
    end

    def self.all
        @@all
    end

    def find_by_name(pokemon)
        if self.all.each do |pokemon|
            puts "#{pokemon.name}"
        else
            nil
        end

    end
    

end

