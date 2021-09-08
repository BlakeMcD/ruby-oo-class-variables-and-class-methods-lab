class Song

    #My class variables
    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        new_array = []
        @@genres.each do |genre|
            if new_array.include?(genre)
            else
                new_array << "#{genre}"
            end
        end
        new_array
    end

    def self.artists
        new_array = []
        @@artists.each do |artist|
            if new_array.include?(artist)
            else
                new_array << "#{artist}"
            end
        end
        new_array
    end

    def self.genre_count
        new_hash = {}

        @@genres.each do |genre|
            if new_hash.key?(genre)
                new_hash[genre] += 1
            else
                new_hash[genre] = 1
            end
        end
        new_hash
    end

    def self.artist_count
        new_hash = {}

        @@artists.each do |artist|
            if new_hash.key?(artist)
                new_hash[artist] += 1
            else
                new_hash[artist] = 1
            end
        end
        new_hash
    end

end