require 'pry'

class Song
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        self.all.find{|person| person.name == name}
    end
end

grace = Song.new("Grace Hopper")
sandi = Song.new("Sandi Metz")

binding.pry