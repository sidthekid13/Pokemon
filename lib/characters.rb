class Character
attr_accessor :name, :location

@@all = []

def initialize(character, location)
    self.name = character
    self.location = location
    @@all << self
end

def self.all
    @@all
end

end

