class Artist
    attr_accessor :name

    def initialize(name)
        @name = name
        self.class.all << self
    end

    @@all = []

    def self.all
        @@all
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select { |song| song.artist == self }
    end

    def genres
        Song.all.map { |song| song.genre }
    end
end